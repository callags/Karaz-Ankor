require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module KarazAnkor
  class Application < Rails::Application
	config.assets.precompile << "audios/*"
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
	
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
	
	ActionMailer::Base.smtp_settings = {
		:address 				=> 'smtp.gmail.com',
		:domain 				=> 'mail.google.com',
		:port 					=> 587,
		:user_name 				=> "klarkelg@gmail.com", #ENV['GMAIL_USERNAME'],
		:password 				=> "532Edinburgh@@", #ENV['GMAIL_PASSWORD'],
		:authentication			=> 'login',
		:enable_starttls_auto	=> true
		}
	
  end
end
#end
