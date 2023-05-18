Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:index, :create]
  end
  resources :reviews, only: [:destroy]
end


#  /restaurants/:restaurant_id/reviews/:id(.:format)
#  /reviews/:id(.:format)
