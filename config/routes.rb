Rails.application.routes.draw do



 # 利用者用
# URL /customers/sign_in ...
devise_for :customer,skip: [:passwords], controllers: {
  registrations: "customer/registrations",
  sessions: 'customer/sessions'
}

 # 生産者用
# URL /farmers/sign_in ...
devise_for :farmer,skip: [:passwords], controllers: {
  registrations: "farmer/registrations",
  sessions: 'farmer/sessions'
}


# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions", as: 'admin'
}

  get 'homes/top'
    root to: 'homes#top'
  get '/about' => 'homes#about', as: 'about'

  scope module: :customer do
    get 'customers/mypage' => 'customers#show', as: 'customers/mypage'
    get 'customers/mypage/edit' => 'customers#edit', as: 'customers/mypage/edit'
    patch 'customers/mypage' => 'customers#update', as: 'customer_update'

    get "job_offers/search" => "job_offers#search"

    resources :job_offers, only: [:index, :show] do
      get 'reservations/information'
      post 'reservations/information' => 'reservations#create'
      get 'reservations/thanx'

      resources :customer_reviews, only: [:new, :create]

    end

    resources :farmer_reviews, only: [:index]
    resources :reservations, only: [:index, :show]


  end

  namespace :farmer do
    get 'farmers/mypage' => 'farmers#show', as: 'farmers/mypage'
    get 'farmers/mypage/edit' => 'farmers#edit', as: 'farmers/mypage/edit'
    patch 'farmers/mypage' => 'farmers#update', as: 'farmer_update'

    resources :job_offers, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
      get 'reservations/index'

      resources :farmer_reviews, only: [:new, :create]

      collection do
        resources :customer_reviews, only: [:index]
      end
    end
  end


  namespace :admin do
    get 'customers/index'
    resources :customer_reviews, only: [:index, :destroy]
    resources :farmer_reviews, only: [:index, :destroy]
    get 'farmers/index'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
