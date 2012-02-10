require 'test_helper'

class ApplicationConfigTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, ApplicationConfig
  end

	test "should get property from config file" do
		yaml_data = { "test" => { "hello" => "Hello" } }.to_yaml
		f = File.new(ApplicationConfig.app_root.join("config", 'application_config.yml'), "w")
		f.puts yaml_data
		f.close

		assert_equal "Hello", property(:hello)
	end
	
	test "should not get property. Reason: no configuration file" do
		path_to_config_file = ApplicationConfig.app_root.join("config", 'application_config.yml')
		File.delete(path_to_config_file) if File.exist?(path_to_config_file)

		assert_raise(RuntimeError) { property(:hello) }
	end
end
