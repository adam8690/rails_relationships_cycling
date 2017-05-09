Rails.application.routes.draw do

  resources :cyclists do
    resources :bikes
  end

  resources :teams

  resources :races
    
end
