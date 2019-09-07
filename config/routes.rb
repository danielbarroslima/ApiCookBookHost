Rails.application.routes.draw do
  root to: 'recipes#index'

  namespace :api, defaults: { format: 'json' } do 
	  namespace :v1 do 
	  	resources :recipes,only: %i[index show create update destroy]
	  end
  end


end
