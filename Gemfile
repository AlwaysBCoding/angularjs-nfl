source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# TEST
group :development, :test do
	gem 'rspec-rails'
end
group :test do
	gem 'factory_girl_rails'
	gem 'shoulda-context'
	gem 'shoulda-matchers'
	gem 'database_cleaner'
end

# DATABASE
	group :development, :production do
		gem 'pg'
	end
	group :test do
		gem 'sqlite3'
	end

# ASSETS
	gem 'jquery-rails'
	gem 'underscore-rails'
	gem 'haml-rails'

# DEBUG
	group :development do
		gem 'better_errors'
		gem 'binding_of_caller'
	end

	gem 'pry-rails'

# API
	gem 'nokogiri'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
