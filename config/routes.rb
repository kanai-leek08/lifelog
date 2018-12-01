Rails.application.routes.draw do
  get 'hello_page/hello'
  root 'hello_page#hello'
  post 'hello_page/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
