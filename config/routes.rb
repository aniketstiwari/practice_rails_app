Rails.application.routes.draw do
  resources :teachers
    #resources :posts
	root 'employees#index'
	resources :employees

    #get "posts/index", to: "posts#index", as: "posts"
    resources :posts, except: :update
    post 'posts/:id', to: 'posts#update'
end
