Rails.application.routes.draw do
  resources :shipments, only: :create

  resources :robots do
    collection do
      get 'extinguish'
      get 'recycle'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
