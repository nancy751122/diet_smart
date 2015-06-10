Rails.application.routes.draw do
  root 'diets#index'
  devise_for :users

  # Routes for the Meal resource:
  # CREATE
  get "/meals/new", :controller => "meals", :action => "new"
  post "/create_meal", :controller => "meals", :action => "create"

  # READ
  get "/meals", :controller => "meals", :action => "index"
  get "/meals/:id", :controller => "meals", :action => "show"

  # UPDATE
  get "/meals/:id/edit", :controller => "meals", :action => "edit"
  post "/update_meal/:id", :controller => "meals", :action => "update"

  # DELETE
  get "/delete_meal/:id", :controller => "meals", :action => "destroy"
  #------------------------------

  # Routes for the Recipe_ingredient resource:
  # CREATE
  get "/recipe_ingredients/new", :controller => "recipe_ingredients", :action => "new"
  post "/create_recipe_ingredient", :controller => "recipe_ingredients", :action => "create"

  # READ
  get "/recipe_ingredients", :controller => "recipe_ingredients", :action => "index"
  get "/recipe_ingredients/:id", :controller => "recipe_ingredients", :action => "show"

  # UPDATE
  get "/recipe_ingredients/:id/edit", :controller => "recipe_ingredients", :action => "edit"
  post "/update_recipe_ingredient/:id", :controller => "recipe_ingredients", :action => "update"

  # DELETE
  get "/delete_recipe_ingredient/:id", :controller => "recipe_ingredients", :action => "destroy"
  #------------------------------

  # Routes for the Ingredient resource:
  # CREATE
  get "/ingredients/new", :controller => "ingredients", :action => "new"
  post "/create_ingredient", :controller => "ingredients", :action => "create"

  # READ
  get "/ingredients", :controller => "ingredients", :action => "index"
  get "/ingredients/:id", :controller => "ingredients", :action => "show"

  # UPDATE
  get "/ingredients/:id/edit", :controller => "ingredients", :action => "edit"
  post "/update_ingredient/:id", :controller => "ingredients", :action => "update"

  # DELETE
  get "/delete_ingredient/:id", :controller => "ingredients", :action => "destroy"
  #------------------------------

  # Routes for the Recipe resource:
  # CREATE
  get "/recipes/new", :controller => "recipes", :action => "new"
  post "/create_recipe", :controller => "recipes", :action => "create"

  # READ
  get "/recipes", :controller => "recipes", :action => "index"
  get "/recipes/:id", :controller => "recipes", :action => "show"

  # UPDATE
  get "/recipes/:id/edit", :controller => "recipes", :action => "edit"
  post "/update_recipe/:id", :controller => "recipes", :action => "update"

  # DELETE
  get "/delete_recipe/:id", :controller => "recipes", :action => "destroy"
  #------------------------------

  # Routes for the Diet resource:
  # CREATE
  get "/diets/new", :controller => "diets", :action => "new"
  post "/create_diet", :controller => "diets", :action => "create"

  # READ
  get "/diets", :controller => "diets", :action => "index"
  get "/diets/:id", :controller => "diets", :action => "show"

  # UPDATE
  get "/diets/:id/edit", :controller => "diets", :action => "edit"
  post "/update_diet/:id", :controller => "diets", :action => "update"

  # DELETE
  get "/delete_diet/:id", :controller => "diets", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
