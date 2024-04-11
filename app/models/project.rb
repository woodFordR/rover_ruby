class Project < ApplicationRecord
  has_one_attached :avatar
  has_one_attached :code_image
end
