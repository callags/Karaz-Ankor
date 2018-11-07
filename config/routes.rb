Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  get 'homepage/index'
  get 'call_script' => 'script#call_script', as: 'call_script'
  get 'call_script2' => 'script#call_script2', as: 'call_script2'
  get 'homepage/slayer_png'
	
  resources :articles
  resources :about
  resources :history
  resources :pathfinder do
	resources :quest1
	resources :quest2
	resources :quest3
	resources :quest4
	resources :quest5
	resources :quest6
	resources :quest7
	resources :quest8
	resources :quest9
	resources :articles
  end
  resources :empire do
	resources :articles
	resources :capital
	resources :kadrin
	resources :norn
	resources :varr
	resources :azul
	resources :drak
	resources :izor
	resources :zhufbar
	resources :peaks
	resources :azgul
	resources :drazh
	resources :agilwutraz
	resources :gunbad
	resources :varn
	resources :vlag
	resources :ungor
	resources :ekrund
	match '*path' => redirect('empire/'), via: :get
  end
  resources :society do
	resources :articles
	resources :social
	resources :military
	resources :magic
	resources :religion
	resources :guilds
	resources :government
	resources :economy
	resources :prominent
	resources :language
  end
  get "*path" => redirect { |p, req| req.flash[:notice] = "Error, #{req.env["HTTP_HOST"]}#{req.env["REQUEST_PATH"]} is not a valid URL"; '/' }
  root 'homepage#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
