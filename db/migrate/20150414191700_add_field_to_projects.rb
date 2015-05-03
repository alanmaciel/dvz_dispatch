class AddFieldToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :documentation, :text
    add_column :projects, :repo_location, :string
    add_column :projects, :hosting, :string
  end
end
