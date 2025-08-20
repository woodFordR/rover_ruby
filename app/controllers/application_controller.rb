class ApplicationController < ActionController::Base
  include Clearance::Controller

  def index
    render layout: false
  end

  private

  def serialize(obj, with: nil)
    serializer = with || begin
      model = obj.try(:model) || obj.class
      "#{model.name}Serializer".constantize
    end
    serializer.new(obj)
  end
end
