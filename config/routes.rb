Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get '/' => 'twitter#index'
   get 'tweets' => 'twitter#index'
   get 'twit' => 'twitter#search'
end
