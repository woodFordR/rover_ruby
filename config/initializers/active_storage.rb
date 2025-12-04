# Set default URL options for ActiveStorage
Rails.application.config.after_initialize do
  ActiveStorage::Current.url_options = {
    host: ENV.fetch('HOST', 'localhost'),
    port: ENV.fetch('PORT', 3000),
    protocol: ENV.fetch('PROTOCOL', 'http')
  }
end
