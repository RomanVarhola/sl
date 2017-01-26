Rails.application.routes.draw do
  
	root 'images#index'
	
		resources :images, only: [:index]
  	devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	namespace :admin do
  		root 'images#index'
  		resources :images
  	end

    post 'welcome_email' => 'images#welcome_email'
  	

end
