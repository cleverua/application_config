# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "cleverua_application_config"
	s.author = "Boris Babusenko"
	s.email = ["boris@cleverua.com"]
	s.homepage = "https://github.com/cleverua/application_config"
  s.summary = "Adds application_config.yml file to 'config' folder in your Rails app."
  s.description = "'application_config' eases project configuring by introducing erb enabled yaml config file in RAILS_ROOT/config folder and provides handful methods accessing config values based on current rails environment. So, you can have separate sets of configuration properties for each rails environment you use."

  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "2.0.1"
	s.require_paths = ["lib"]
end
