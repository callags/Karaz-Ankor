Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  
  resources :articles
  resources :about do
	match '*path' => redirect{ |p, req| req.flash[:notice] = "Error, #{req.env["HTTP_HOST"]}#{req.env["REQUEST_PATH"]} is not a valid URL"; 'about/' }, via: :get
  end
  resources :history do
	match '*path' => redirect{ |p, req| req.flash[:notice] = "Error, #{req.env["HTTP_HOST"]}#{req.env["REQUEST_PATH"]} is not a valid URL"; 'history/' }, via: :get
  end
  resources :pathfinder do
	resources :q1 do
		resources :q1s1 do
			resources :q1s1a do
				resources :q1s1b do
					resources :q1s1c do
						resources :q1s1d do 
							resources :q1s2 do
								resources :q1s2a do
									resources :q1s3 do
										resources :q1s3a do
											resources :q1s3aa
										end
										resources :q1s3b do
											resources :q1s3bb
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
	
	resources :quest2
	resources :quest3
	resources :quest4
	resources :quest5
	resources :quest6
	resources :quest7
	resources :quest8
	resources :quest9
	match '*path' => redirect{ |p, req| req.flash[:notice] = "Error, #{req.env["HTTP_HOST"]}#{req.env["REQUEST_PATH"]} is not a valid URL"; 'pathfinder/' }, via: :get
  end
  resources :empire do
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
	match '*path' => redirect{ |p, req| req.flash[:notice] = "Error, #{req.env["HTTP_HOST"]}#{req.env["REQUEST_PATH"]} is not a valid URL"; 'empire/' }, via: :get
  end
  resources :society do
	resources :social
	resources :military
	resources :magic
	resources :religion
	resources :guilds
	resources :government
	resources :economy
	resources :prominent
	resources :language
	match '*path' => redirect{ |p, req| req.flash[:notice] = "Error, #{req.env["HTTP_HOST"]}#{req.env["REQUEST_PATH"]} is not a valid URL"; 'society/' }, via: :get
  end
  get "*path" => redirect { |p, req| req.flash[:notice] = "Error, #{req.env["HTTP_HOST"]}#{req.env["REQUEST_PATH"]} is not a valid URL"; '/' }
  root 'homepage#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
