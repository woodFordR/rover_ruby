class AddCodeDescriptionAndCodeLinkToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :code_description, :text
    add_column :projects, :code_link, :string
  end
end
