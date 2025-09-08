class User < ApplicationRecord
  include Clearance::User

  has_many :photos
  has_many :projects
  has_one_attached :resume

  def photo_list 
    list = []
    self.photos.each do |photo|
      list << {
        "photoPath": photo.file.variant(:large).processed.url,
        "photoTitle": photo.name
      }
    end

    list
  end
end

