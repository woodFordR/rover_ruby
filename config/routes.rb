Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end

  get "bird", to: "bird#show"

  mount_ember_app :frontend, to: "/"
  mount_ember_assets :frontend, to: "/"
end
