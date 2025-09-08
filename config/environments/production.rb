require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.enable_reloading = false
  config.eager_load = true
  config.consider_all_requests_local = false
  config.require_master_key = true
  config.active_storage.service = :amazon

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  config.force_ssl = true
  # Log to STDOUT by default
  config.logger = ActiveSupport::Logger.new(STDOUT)
    .tap  { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }
  config.log_tags = [ :request_id ]
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")
  config.action_mailer.perform_caching = false
  config.i18n.fallbacks = true
  config.active_support.report_deprecations = false
  config.active_record.dump_schema_after_migration = false
  config.static_cache_control = "public, max-age=31622400"
  config.hosts = [
    "kaewell.com",     
    /.*\.kaewell\.com/
  ]
  # config.public_file_server.enabled = false
  # config.asset_host = "http://assets.example.com"
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for Apache
  # config.action_dispatch.x_sendfile_header = "X-Accel-Redirect" # for NGINX
  # config.action_cable.mount_path = nil
  # config.action_cable.url = "wss://example.com/cable"
  # config.action_cable.allowed_request_origins = [ "http://example.com", /http:\/\/example.*/ ]
  # config.assume_ssl = true
  # config.cache_store = :mem_cache_store
  # config.active_job.queue_adapter = :resque
  # config.active_job.queue_name_prefix = "ruby_rover_production"
  # config.action_mailer.raise_delivery_errors = false
  # config.host_authorization = { exclude: ->(request) { request.path == "/up" } }
end
