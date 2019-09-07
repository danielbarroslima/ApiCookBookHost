require 'rails_helper'

describe 'delete recipe' do 
	it 'successfully' do 
		recipe = create(:recipe)

		delete "/api/v1/recipes/#{recipe.id}"

		json_recipe = JSON.parse(response.body, symbolize_names: true)
		expect(response.status).to eq 202
		expect(json_recipe[:message]).to eq 'Deletado com sucesso'
	end
	it 'fail in deletion' do 		
		delete "/api/v1/recipes/000"

		json_recipe = JSON.parse(response.body, symbolize_names: true)
		expect(response.status).to eq 404
		expect(json_recipe[:message]).to eq 'Receita não encontrada'
	end
end