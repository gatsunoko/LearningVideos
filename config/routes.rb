Rails.application.routes.draw do
  resources :videos do
  	collection do
  		get :Search
  	end
  end
  devise_for :users

  root 'videos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
