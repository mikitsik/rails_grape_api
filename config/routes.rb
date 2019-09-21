Rails.application.routes.draw do
  devise_for :users
  mount RailsGrapeApi::API => '/'
end
