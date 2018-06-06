Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, :defaults => {format: 'json'} do
    resources :orders, :except => [:show, :new, :edit]
    # global options responder -> makes sure OPTION request for CORS endpoints work
    match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}
  end
end
