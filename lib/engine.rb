module ApplicationConfig
	class Engine < Rails::Engine
		config.before_configuration do |app|
      ApplicationConfig.setup do |config|
        config.app_root = app.root
      end
    end
	end
end
