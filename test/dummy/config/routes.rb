Rails.application.routes.draw do
  mount Avo::Auth0::Engine, at: '/auth'
end
