class RemoveDetailsToCookbooks < ActiveRecord::Migration
  def change
    remove_column :cookbooks, :title, :string
  end
end
