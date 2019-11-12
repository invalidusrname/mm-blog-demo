Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'default#index'

  scope module: ['api', 'v1'], path: '/api/v1/' do
    resources :blogs
    resources :comments
  end

end
