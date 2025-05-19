Rails.application.routes.draw do
  get "brags/index"
  resources :tasks do
    member do
      patch :toggle_done
    end

    collection do
      get 'category/:category', to: 'tasks#by_category', as: 'by_category'
    end
  end
  get "brags", to: "brags#index", as: :brags
  get "up" => "rails/health#show", as: :rails_health_check

  root "tasks#index"
end
