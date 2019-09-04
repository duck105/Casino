Rails.application.routes.draw do
  namespace :admin do
      resources :bets, except: [:new, :edit, :destroy] do 
        member do 
          post 'pay'
          post 'refund'
        end
        collection do
          delete :destroy_all
        end
      end

      resources :participants
      resources :deposits, except: [:edit] do
        collection do
          delete :destroy_all
        end
      end
      resources :settings
      root to: "bets#index"
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'participants#index'
  resources :participants
  resources :bets
end
