require 'rails_helper'

describe 'visitor view recipes' do  
	it 'successfully' do 
		get '/recipes'

		expect(response.status).to eq 200
		expect(response.body).to include('Receitas')
	end
	
end
