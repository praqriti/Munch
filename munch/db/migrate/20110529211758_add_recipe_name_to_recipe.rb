class AddRecipeNameToRecipe < ActiveRecord::Migration
  def self.up
    add_column :recipes, :recipe_name, :string
  end

  def self.down
    remove_column :recipes, :recipe_name
  end
end
