class PhotoSerializer < ApplicationSerializer
  attribute :id do |obj|
    "#{obj.id}"
  end
  attribute :type do
    "Photo"
  end
  attribute :attributes do |obj|
    {
      "file": obj.file.variant(:large).processed.url,
      "description": obj.description,
      "title": obj.title,
      "userId": obj.user_id.to_s,
    }
  end
end
