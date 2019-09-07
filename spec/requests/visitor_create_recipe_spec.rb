require 'rails_helper'

describe 'visitor create recipes' do  
	it 'successfully' do
		post "/api/v1/recipes", params:{recipe: {title: 'Bolo', difficulty: 'Médio',recipe_type: 'entrada' , cuisine: 'brasileira',cook_time: 50, ingredients: 'Farinha',cook_method: 'Cozinhe '}}

		expect(response.status).to eq 201
	    expect(response.body).to include('Bolo')
	end
	
end


