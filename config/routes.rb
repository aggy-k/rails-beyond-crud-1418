Rails.application.routes.draw do
  resources :restaurants do
    # resources :reviews, shallow: true
    resources :reviews, only: [:new, :create]

    # get '/top', to: 'restaurants#top', as: :top
    collection do
      get :top
    end

    # member routes is for routes with params[:id]
    # refers to 1 single restaurant
    member do
      get :chef
    end
  end

  resources :reviews, only: [:destroy, :edit, :update]
end
