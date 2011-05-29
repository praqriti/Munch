class Recipe < ActiveRecord::Base

   validates_presence_of :recipe_name, :recipe_type, :description

end
