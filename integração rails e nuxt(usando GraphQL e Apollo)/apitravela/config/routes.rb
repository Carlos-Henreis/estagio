Rails.application.routes.draw do
  Rails.application.routes.draw do
    # ...
    if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/your/endpoint"
    end
  end
  post "/graphql", to: "graphql#execute"
  namespace :api do
    namespace :v1 do
      resources :travels
    end
  end
end
