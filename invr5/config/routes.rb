Rails.application.routes.draw do
	resources :invmtolineas
	root 'invmtolineas#index'
end
