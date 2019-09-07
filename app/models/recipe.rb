class Recipe < ApplicationRecord
	validates :title, :recipe_type, :cuisine, :cook_method, :cook_time, :ingredients, :difficulty, presence: true
end
