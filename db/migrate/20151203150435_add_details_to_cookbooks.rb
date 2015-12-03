class AddDetailsToCookbooks < ActiveRecord::Migration
  def change
    add_column :cookbooks, :cookbooktitle, :string
  end
end
