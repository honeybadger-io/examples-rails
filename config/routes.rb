Rails.application.routes.draw do
  root to: "pages#index"
  post "/pages/runtime_error", to: "pages#runtime_error"
end
