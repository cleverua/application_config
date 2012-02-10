module ApplicationConfig
	class Engine < Rails::Engine
		initializer "application_config.load_app_instance_data" do |app|
      ApplicationConfig.setup do |config|
        config.app_root = app.root
      end
    end
	end
end
