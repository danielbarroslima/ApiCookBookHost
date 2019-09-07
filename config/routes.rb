Rails.application.routes.draw do
  root to: 'recipes#index'

  namespace :api, defaults: { format: 'json' } do 
	  namespace :v1 do 
	  	resources :recipes,only: %i[show create]
	  end
  end


end
