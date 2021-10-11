Rails.application.routes.draw do
  root to: 'pages#home'

  mount API::Engine => '/api'
end
