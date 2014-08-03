Rails.application.routes.draw do

root "static_pages#index"

resources :museums do 
	resources :paintings
end

resources :paintings
resources :artists

end
