class AddLogoToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :logo, :string
  end
end
