Rails.application.routes.draw do
  namespace :admin do
      resources :bets do 
        member do 
          post 'pay'
          post 'refund'
        end
      end

      resources :participants

      root to: "bets#index"
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'participants#index'
  resources :participants
  resources :bets
end
