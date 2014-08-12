Rails.application.routes.draw do
  root to: "pages#index"
  get ':controller(/:action(/:id))(.:format)'
end
