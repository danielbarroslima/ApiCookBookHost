require 'rails_helper'

describe 'visitor view recipes' do  
	xit 'successfully' do 
		get '/recipe'

		expect(response.status).to eq 200
		expect(response.body).to include('Receitas')
	end
	
end
