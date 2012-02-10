require 'rails/generators'

module ApplicationConfig
	class InstallGenerator < Rails::Generators::Base
		def self.source_root
			@source_root ||= File.join(File.dirname(__FILE__))
		end

		def copy_application_config_file
			copy_file "../../application_config.yml", "config/application_config.yml"
		end
	end
end
