Rails.application.routes.draw do
  root 'welcome#index'
  resources :posts do
    collection do
      get '/public', to: 'posts#public'
      get '/by/:user_id/', to: 'posts#userpost'
    end
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
