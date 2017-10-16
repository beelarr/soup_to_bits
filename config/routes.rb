Rails.application.routes.draw do
  resources :categories, :soups

  root to: "categories#index"  # controller and action

  get "/allcategories", to: redirect("/")

  get "/soups/:id/toggle_featured", to: "soups#toggled_featured",  as: :toggled_featured

  get "/secret_soups", to: "soups#secret_soups"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
