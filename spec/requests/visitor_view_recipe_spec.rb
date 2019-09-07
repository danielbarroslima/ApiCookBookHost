require 'rails_helper'

describe 'visitor view recipes' do  
	it 'successfully' do 
		recipe = Recipe.create!(title: 'Api-title' , recipe_type: 'Api', cuisine: 'Api', difficulty: 'Api', cook_time: 10, ingredients: 'Api', cook_method: 'Api')
		get "/api/v1/recipes/#{recipe.id}"

		json_recipe = JSON.parse(response.body, symbolize_names: true)
		expect(response.status).to eq 200
		expect(json_recipe[:title]).to include('Api-title')
	end
	
end
