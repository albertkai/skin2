source 'http://rubygems.org'

#ruby "1.9.2"

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'json'
gem 'rabl'
gem 'oj'
gem 'gon'
gem "paperclip", "~> 3.0"

group :development, :test do
  gem 'sqlite3'
end

group :production, :staging do
  gem 'pg'
end

group :development do
  gem 'guard-livereload'
  gem 'rb-fsevent', '~> 0.9'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'eco'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'
