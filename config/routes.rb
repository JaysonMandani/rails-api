Rails.application.routes.draw do
  resources :shipments, only: :create

  resources :robots do
    member do
      post 'extinguish'
    end

    collection do
      post 'recycle'
    end
  end
end
