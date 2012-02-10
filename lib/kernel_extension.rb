module Kernel
	def property(key)
		app_config_file_path = ApplicationConfig.app_root.join('config', 'application_config.yml')
		if File.exists?(app_config_file_path)
			ApplicationConfig.app_config_data = YAML::load(ERB.new(IO.read(app_config_file_path)).result)
			begin
				ApplicationConfig.app_config_data[Rails.env][key.to_s] 
			rescue => e 
				raise("Failed to get '#{key}' configuration property")
			end
		else
			raise "Application configuration file does not found under #{ApplicationConfig.app_root.join('config')} folder! Please make sure you ran application_config:install generator."
		end
  end

  alias_method :prop, :property
end
