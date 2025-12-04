require 'aws-sdk-s3'

Aws.config.update({
  http_open_timeout: 5,
  http_read_timeout: 5,
  http_wire_trace: Rails.env.development?
})

if Rails.env.development? || Rails.env.test?
  ca_bundle_path = '/opt/homebrew/etc/ca-certificates/cert.pem'

  if File.exist?(ca_bundle_path)
    Aws.config.update({
      ssl_ca_bundle: ca_bundle_path,
      ssl_verify_peer: true
    })
  end
end
