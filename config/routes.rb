Rails.application.routes.draw do

root 'museums#new'

resources :museums do 
	resources :paintings
end

resources :paintings
resources :artists

end
