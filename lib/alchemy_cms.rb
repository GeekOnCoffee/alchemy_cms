if defined?(Rails) && Rails::VERSION::MAJOR == 3
	require 'acts_as_list'
	require 'attachment_magic'
	require 'authlogic'
	require 'awesome_nested_set'
	require 'dynamic_form'
	require 'fleximage'
	require 'gettext_i18n_rails'
	require 'jquery-rails'
	require 'userstamp'
	require 'will_paginate'
	require 'yaml'
	require 'sass-rails'
	require 'declarative_authorization'
	require 'extensions/hash'
	require 'extensions/array'
	require 'extensions/action_view'
	require 'alchemy/version'
	require 'alchemy/auth_engine'
	require 'alchemy/engine'
	%w(config essence page_layout modules remote_pagination_link_renderer tinymce).each do |class_name|
		require File.join(File.dirname(__FILE__), "alchemy", class_name)
	end
	require File.join(File.dirname(__FILE__), "alchemy", "seeder")
else
	raise "Alchemy 2.0 needs Rails 3.0 or higher. You are currently using Rails #{Rails::VERSION::MAJOR}"
end

module Alchemy
  
	class EssenceError < StandardError; end
  
end
