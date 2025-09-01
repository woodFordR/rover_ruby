Clearance.configure do |config|
  config.mailer_sender = "support@kaewell.com"
  config.rotate_csrf_on_sign_in = true
  config.cookie_domain = "kaewell.com"
  config.cookie_path = "/"
  config.redirect_url = "/"
  config.routes = false
  config.signed_cookie = false
  config.parent_controller = "ApplicationController"
end

