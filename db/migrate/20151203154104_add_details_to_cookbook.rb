class AddDetailsToCookbook < ActiveRecord::Migration
  def change
    add_column :cookbooks, :cookbooktitle, :string
    add_column :cookbooks, :description, :string
  end
end
