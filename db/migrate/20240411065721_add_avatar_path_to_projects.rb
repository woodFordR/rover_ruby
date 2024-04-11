class AddAvatarPathToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :avatar_path, :string
  end
end
