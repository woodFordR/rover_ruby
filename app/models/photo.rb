class Photo < ApplicationRecord
  belongs_to :user

  has_one_attached :file do |f|
    f.variant :medium, resize_to_limit: [192, 108], preprocessed: true
    f.variant :large, resize_to_limit: [768, 432], preprocessed: true
  end
end
