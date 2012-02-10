require 'rails'
require "active_support/dependencies"
require 'yaml'
require 'erb'

module ApplicationConfig

	mattr_accessor :app_root, :app_config_data

	def self.setup
		yield self
	end

	require "engine"
	require "kernel_extension"
end
