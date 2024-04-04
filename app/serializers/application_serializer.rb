class ApplicationSerializer
  include Alba::Resource
  layout inline: proc {
    %({
      "data": #{serialized_json}
    })
  }
end
