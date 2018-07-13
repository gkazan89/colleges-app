Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/colleges" => "colleges#index"
  get "/colleges/:id" => "colleges#show"
  post "/colleges" => "colleges#create"
  patch "/colleges/:id" => "colleges#update"
  delete "/colleges/:id" => "colleges#destroy"
end
