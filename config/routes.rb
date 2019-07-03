Rails.application.routes.draw do
  # get '/powers/search_for_heroine_by_power',to: "/powers/search_for_heroine_by_power", as: "search_for_heroine_by_power"
  # post '/powers', to: 'powers/display_heroines_with_powers/:id', as: "display_heroine_with_powers"

  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]  
end
