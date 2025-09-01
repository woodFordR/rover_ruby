class Api::V1::UsersController < Clearance::UsersController

  def new
  end

  def create
  end

  def show
  end

  private

  def redirect_signed_in_users
    if signed_in?
      none
    end
  end

  def url_after_create
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

