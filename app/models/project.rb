class Project < ApplicationRecord
  has_one_attached :avatar

  after_save do
    if avatar.attached?
      route = Rails.application.routes.url_helpers.rails_blob_path(avatar, only_path: true)
      self.avatar_path = route
    end
  end
end
