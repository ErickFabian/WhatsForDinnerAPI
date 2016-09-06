Rails.application.routes.draw do
  devise_for :users
  defaults format: 'json' do
    resources :food_stands
  end
end
