class AddRecipeTypeToRecipe < ActiveRecord::Migration
  def self.up
    add_column :recipes, :recipe_type, :string
  end

  def self.down
    remove_column :recipes, :recipe_type
  end
end
