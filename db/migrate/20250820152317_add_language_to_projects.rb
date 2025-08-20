class AddLanguageToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :code_language, :string
  end
end

