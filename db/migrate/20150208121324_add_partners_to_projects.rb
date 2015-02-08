class AddPartnersToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :partner, :string
    add_column :projects, :coreValue1, :string
    add_column :projects, :coreValue2, :string
    add_column :projects, :coreValue3, :string
    add_column :projects, :developingSkills, :string
  end
end
