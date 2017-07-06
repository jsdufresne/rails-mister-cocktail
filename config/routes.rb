Rails.application.routes.draw do

  get    "cocktails",          to: "cocktails#index", as: "cocktails_url"

  get    "cocktails/new",      to: "cocktails#new"
  post   "cocktails",          to: "cocktails#create"

  get    "cocktails/:id",       to: "cocktails#show"

  get    "cocktails/:cocktail_id/doses/new", to: "doses#new"
  post  "cocktails/:cocktail_id/doses",      to: "doses#create"

  delete "doses/:id",      to: "doses#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
end
