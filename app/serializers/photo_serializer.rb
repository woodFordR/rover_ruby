class PhotoSerializer < ApplicationSerializer
  attribute :attributes do |obj|
    {
      "photoPath": obj.file.variant(:large).processed.url,
      "photoTitle": obj.name
    }
  end
end

