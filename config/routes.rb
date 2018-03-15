Rails.application.routes.draw do
  resources :shipments, only: :create

  resources :robots do
    member do
      post 'extinguish'
      put 'move_to_ship'
      put 'remove_to_ship'
    end

    collection do
      post 'recycle'
    end
  end
end
