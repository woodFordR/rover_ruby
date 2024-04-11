class AddDeployLinkToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :deploy_link, :string
  end
end
