class User < ApplicationRecord
  include Clearance::User

  has_many :photos
  has_many :projects
  has_one_attached :resume
end

