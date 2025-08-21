class Project < ApplicationRecord
  has_one_attached :avatar do |a|
    a.variant :thumb, resize_to_limit: [50, 50], preprocessed: true
    a.variant :medium, resize_to_limit: [100, 100], preprocessed: true
    a.variant :large, resize_to_limit: [200, 200], preprocessed: true
  end
end

