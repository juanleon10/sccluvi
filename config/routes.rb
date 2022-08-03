Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'shortener', to: 'shortened_urls#prueba', as: :shortener
      post 'shortener', to: 'shortened_urls#new', as: :new_shortener
    end
  end
  # post 'api/v1/shortener', to: 'shortener/shortened_urls#index', as: :shortener
  get '/:id' => "shortened_urls#show"

end
