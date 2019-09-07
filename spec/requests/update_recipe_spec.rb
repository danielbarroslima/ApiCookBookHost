require 'rails_helper'

describe 'update in recipe' do 
	it 'Sucessfully' do 
		recipe = create(:recipe)
    put "/api/v1/recipes/#{recipe.id}", params:{recipe:{title:'Update'}}

		json_update = JSON.parse(response.body,symbolize_names: true)

		expect(response.status).to eq 202
		expect(json_update[:title]).to eq 'Update'
	end

	it 'fail not recipe ' do 
	  put "/api/v1/recipes/000", params:{recipe:{title:'Update'}}

		json_update = JSON.parse(response.body,symbolize_names: true)

		expect(response.status).to eq 404
		expect(json_update[:message]).to eq 'Receita não encontrada'
	end

	it 'fail attribute missing' do 
		recipe = create(:recipe)
	  put "/api/v1/recipes/#{recipe.id}", params:{recipe:{title:''}}

		json_update = JSON.parse(response.body,symbolize_names: true)

		expect(response.status).to eq 412
		expect(json_update[:message]).to include "Title can't be blank"
	end
end