class AddDetailsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :recipetitle, :string
    add_column :recipes, :summaryofrecipe, :string
    add_column :recipes, :ingredients, :string
    add_column :recipes, :makes, :string
    add_column :recipes, :preparationtime, :string
    add_column :recipes, :preparation, :string
    add_column :recipes, :cookingtime, :string
    add_column :recipes, :notes, :string
  end
end
