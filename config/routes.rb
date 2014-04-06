ShareDrive::Application.routes.draw do
  authenticated :user do
    root :to => 'users#edit'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
