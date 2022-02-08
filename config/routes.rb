Rails.application.routes.draw do
  root :to => 'homes#top'
  get 'books' => 'books#new'
  get 'books' => 'books#index',as:'index'
  post "books" => 'books#create'
  get 'books/id' => 'books#show', as:'show'
  get 'books/id/edit' => 'books#edit', as:'edit'
  patch 'books/id' => 'books#update', as:'update'
  delete 'books/id' => 'books#destroy', as:'destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
