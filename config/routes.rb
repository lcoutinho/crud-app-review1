CrudReview1::Application.routes.draw do

  root :to => "meals#index"
  resources :meals
  get "/meals/:id/delete" => "meals#destroy", :as => "delete"

#      root        /                           meals#index
#     meals GET    /meals(.:format)            meals#index
#           POST   /meals(.:format)            meals#create
#  new_meal GET    /meals/new(.:format)        meals#new
# edit_meal GET    /meals/:id/edit(.:format)   meals#edit
#      meal GET    /meals/:id(.:format)        meals#show
#           PUT    /meals/:id(.:format)        meals#update
#           DELETE /meals/:id(.:format)        meals#destroy
#    delete GET    /meals/:id/delete(.:format) meals#destroy

end