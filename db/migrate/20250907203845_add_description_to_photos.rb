class AddDescriptionToPhotos < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :description, :string
  end
end
