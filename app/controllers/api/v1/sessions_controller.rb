class Api::V1::SessionsController < Clearance::SessionsController
  before_action :redirect_signed_in_users, only: [:create, :new]
  skip_before_action :require_login, only: [:create, :new], raise: false

  def create
    @user = authenticate(params)

    sign_in(@user) do |status|
      if status.sucess?
        url_after_create
      else
        render json: { status: 404 }
      end
    end
  end

  def destroy
    sign_out
    url_after_destroy
  end

  def new
  end

  private

  def redirect_signed_in_users
    if signed_in?
      render json: serialize(current_user)
    end
  end

  def url_after_create
    render json: serialize(current_user)
  end

  def url_after_destroy
    render json: { status: 200 }
  end

  def url_for_signed_in_users
    render json: serialize(current_user)
  end
end

