Rails.application.routes.draw do
  devise_for :users
  root 'topics#index'

  resources :topics do
    member do
    put "like",    to: "topics#upvote"
    put "dislike", to: "topics#downvote"
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
