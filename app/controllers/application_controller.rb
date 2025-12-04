class ApplicationController < ActionController::Base
  include Clearance::Controller

  before_action :set_active_storage_url_options

  def index
    render layout: false
  end

  private

  def set_active_storage_url_options
    ActiveStorage::Current.url_options = {
      host: request.host,
      port: request.port,
      protocol: request.protocol.sub('://', '')
    }
  end

  def serialize(obj, with: nil)
    serializer = with || begin
      model = obj.try(:model) || obj.class
      "#{model.name}Serializer".constantize
    end
    serializer.new(obj)
  end
end
