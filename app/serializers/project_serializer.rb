class ProjectSerializer < ApplicationSerializer
  attribute :attributes do |obj|
    {
      "avatar": obj.avatar,
      "codeDescription": obj.code_description,
      "codeLink": obj.code_link,
      "codeImage": obj.code_image,
      "description": obj.description,
      "logo": obj.logo,
      "owner": obj.owner,
      "title": obj.title
    }
  end
  attribute :id do |obj|
    "#{obj.id}"
  end
  attribute :type do
    "project"
  end
end
