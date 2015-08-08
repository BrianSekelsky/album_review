Rails.application.routes.draw do
  devise_for :users
  resources :albums
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_scope :user do
    delete "/logout" => "devise/sessions#destroy"
  end

end
