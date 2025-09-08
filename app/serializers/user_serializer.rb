class UserSerializer < ApplicationSerializer
  attribute :id do |obj|
    "#{obj.id}"
  end
  attribute :type do
    "User"
  end
  attribute :attributes do |obj|
    {
      "resumePath": obj.resume_blob.url,
      "firstName": obj.first_name,
      "lastName": obj.last_name,
      "username": obj.username,
      "trackVisits": obj.track_visits,
      "email": obj.email,
      "userId": obj.id.to_s,
      "photos": obj.photo_list
    }
  end
end

