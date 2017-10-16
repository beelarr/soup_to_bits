Rails.application.routes.draw do
  resources :categories, :soups

  root to: "categories#index"  # controller and action

  get "/allcategories", to: redirect("/")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
