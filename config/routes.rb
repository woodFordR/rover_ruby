Rails.application.routes.draw do
  mount_ember_app :frontend, to: "/"
  # root "posts#index"
  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end

  get "bird", to: "bird#show"
end
