class ProjectSerializer < ApplicationSerializer
  attribute :attributes do |obj|
    {
      "title": obj.title, 
      "owner": obj.owner, 
      "description": obj.description, 
      "logo": obj.logo 
    }
  end
  attribute :id do |obj|
    "#{obj.id}"
  end
  attribute :type do
    "project"
  end
end
