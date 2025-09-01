require 'active_support/deprecation'

class Api::V1::PasswordsController < Clearance::PasswordsController
  before_action :ensure_existing_user, only: [:edit, :update]
  before_action :ensure_email_present, only: [:create]
  skip_before_action :require_login, only: [:create, :edit, :new, :update], raise: false

  def new
    # render template: "passwords/new"
  end

  def create
    if user = find_user_for_create
      user.forget_password!
      # deliver_email(user)
    end

    # render template: "passwords/create", status: :accepted
  end

  def edit
    @user = find_user_for_edit

    if params[:token]
      session[:password_reset_token] = params[:token]
      # redirect_to url_for
    else
      # render template: "passwords/edit"
    end
  end

  def update
    @user = find_user_for_update

    if @user.update_password(password_from_password_reset_parameters)
      sign_in @user if Clearance.configuration.sign_in_on_password_reset?
      # redirect_to url_after_update, status: :see_other
      session[:password_reset_token] = nil
    else
      flash_failure_after_update
      # render template: "passwords/edit", status: :unprocessable_entity
    end
  end

  private

end

