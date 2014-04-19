BFL::Application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'home#index'

  match 'about' => 'home#about', via: :get
  match 'subscriptions' => 'home#subscriptions', via: :get

  resources :cities, only: [:new, :create, :show, :destroy]
  resources :faqs, only: [:new, :create, :index, :destroy]
  resources :messages, only: [:new, :create, :destroy]
  resources :categories
  resources :posts

  authenticate :user, -> (u) { u.admin == true } do
    match 'admin' => 'home#admin', via: :get
    resources :messages, only: [:show, :index, :destroy]
  end

  %w( 404 422 500 ).each do |code|
    get code, to: 'errors#show', code: code
  end

end
