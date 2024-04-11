class AddCodeSnippetToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :code_snippet, :text
  end
end
