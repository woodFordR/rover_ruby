class ProjectSerializer < ApplicationSerializer
  attribute :id do |obj|
    "#{obj.id}"
  end
  attribute :type do
    "Project"
  end
  attribute :attributes do |obj|
    {
      # "avatar": obj.avatar.variant(:thumb).processed.url,
      "codeDescription": obj.code_description,
      "codeLink": obj.code_link,
      "codeSnippet": obj.code_snippet,
      "deployLink": obj.deploy_link,
      "description": obj.description,
      "logo": obj.logo,
      "owner": obj.owner,
      "title": obj.title,
      "codeLanguage": obj.code_language,
      "projectId": obj.id.to_s,
      "userId": obj.user_id.to_s,
    }
  end
end
