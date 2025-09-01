class Api::V1::UsersController < Clearance::UsersController
  before_action :redirect_signed_in_users, only: [:create, :new]
  skip_before_action :require_login, only: [:create, :new], raise: false

  def new
    @user = user_from_params
    # render template: "users/new"
  end

  def create
    @user = user_from_params

    if @user.save
      sign_in @user
    else
      render json {}
      # render template: "users/new", status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def redirect_signed_in_users
    if signed_in?
      # redirect_to Clearance.configuration.redirect_url
      none
    end
  end

  def url_after_create
    # Clearnace.configuration.redirect_url
    none
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

  def use_params
    params[Clearance.configuration.user_parameter] || {}
  end
end

