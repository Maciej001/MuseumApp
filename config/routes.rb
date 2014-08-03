Rails.application.routes.draw do

root "paintings#index"

resources :museums do 
	resources :paintings
end

resources :paintings
resources :artists

end
