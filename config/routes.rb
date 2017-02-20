Rails.application.routes.draw do
  resources :teammembers do
    member do
      post 'toggle_ooo'
    end
  end
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
