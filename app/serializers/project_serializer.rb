class ProjectSerializer < ApplicationSerializer
  attribute :attributes do |obj|
    {
      "avatarPath": obj.avatar_path,
      "codeDescription": obj.code_description,
      "codeLink": obj.code_link,
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
