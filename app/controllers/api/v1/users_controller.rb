class Api::V1::UsersController < Clearance::UsersController
  before_action :redirect_signed_in_users, only: [:create, :new]
  skip_before_action :require_login, only: [:create, :new], raise: false

  def new
    @user = user_from_params
    render json: serialize(@user)
  end

  def create
    @user = user_from_params

    if @user.save
      sign_in @user
      url_after_create
    else
      render json: serialize(@user), status: :unprocessable_entity
    end
  end

  def show
    # @user = User.find_by_username(params[:user][:username])
    # if @user
    #   render json: serialize(@user)
    # else
    #   render json: { User.null_id }, status: :unprocessable_entity
    # end 
  end

  private

  def redirect_signed_in_users
    if signed_in?
      @user = User.find_by_id(current_user.id)
      render json: serialize(@user)
    end
  end

  def url_after_create
    render json: serialize(@user)
  end

  def user_from_params
    email = user_params.delete(:email)
    pwd = user_params.delete(:password)
    username = user_params.delete(:username)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = pwd
      user.username = username
    end
  end

  def user_params
    params[Clearance.configuration.user_parameter] || {}
  end
end

