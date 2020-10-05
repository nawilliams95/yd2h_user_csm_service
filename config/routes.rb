Rails.application.routes.draw do
  root 'welcome#index'
  resources :posts do
    collection do
      get '/public', to: 'posts#public'
      get '/by/:user_id/', to: 'posts#userpost'
      get '/random', to: 'posts#random'
      get '/:id/edit', to: 'posts#editshow'
    end
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
