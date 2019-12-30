Rails.application.routes.draw do
  match '/phones', to: 'phones#index', via: :get
  match '/phones', to: 'phones#create', via: :post
  match '/phones/:no', to: 'phones#create', via: :post
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
