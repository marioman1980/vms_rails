Rails.application.routes.draw do
	root 'pages#home'

  get '/help', 					to: 'pages#help'

  get '/contact', 				to: 'pages#contact'

	get '/privacy_policy', 	to: 'pages#privacy_policy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
