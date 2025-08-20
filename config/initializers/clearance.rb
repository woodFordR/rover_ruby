Clearance.configure do |config|
  config.mailer_sender = "support@woodford.life"
  config.rotate_csrf_on_sign_in = true
  config.cookie_domain = "woodford.life"
  config.cookie_path = "/"
  config.redirect_url = "/"
  config.routes = false
  config.signed_cookie = false
  config.parent_controller = "ApplicationController"
end

