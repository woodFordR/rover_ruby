class UserSerializer < ApplicationSerializer
  attribute :id do |obj|
    "#{obj.id}"
  end
  attribute :type do
    "User"
  end
  attribute :attributes do |obj|
    {
      "resumePath": Rails.application.routes.url_helpers.rails_blob_path(
        obj.resume,
        only_path: true
      ),
      "firstName": obj.first_name,
      "lastName": obj.last_name,
      "username": obj.username,
      "trackVisits": obj.track_visits,
      "email": obj.email,
      "userId": obj.id.to_s,
    }
  end
end

