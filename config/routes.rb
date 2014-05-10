Rps::Application.routes.draw do
  root 'game#index'
  post '/throw/' => 'game#throw', as: :throw
end
