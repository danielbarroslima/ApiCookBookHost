require 'rails_helper'

describe 'visitor view all recipes' do 
	it 'successfully' do 
  	recipe = create(:recipe, title:'Pão de queijo')

  	get '/api/v1/recipes'

  	expect(response.status).to eq 200
  	expect(response.body).to include 'Pão de queijo'
  end
end

