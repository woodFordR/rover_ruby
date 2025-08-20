require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module RubyRover
  class Application < Rails::Application
    config.load_defaults 7.1

    config.autoload_lib(ignore: %w(assets tasks))

    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    # config.to_prepare do
    #   Clearance::PasswordsController.layout "my_passwords_layout"
    #   Clearance::SessionsController.layout "my_sessions_layout"
    #   Clearance::UsersController.layout "my_admin_layout"
    # end

  end
end
