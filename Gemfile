source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# A modern CSS framework based on Flexbox
gem 'bulma-rails', "~> 0.4.2"

# A library for generating fake data such as names, addresses, and phone numbers.
gem 'faker'

group :production do
  gem 'pg'
end

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # rspec-rails is a testing framework for Rails
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  # Makes tests easy on the fingers and the eyes
  gem 'shoulda'

  # A library for setting up Ruby objects as test data.
  gem "factory_girl_rails", "~> 4.0"

  # An IRB alternative and runtime developer console
  gem "pry"
  gem "pry_debug"
end

# JQuery for rails
gem 'jquery-rails'

# Dynamic nested forms using jQuery made easy; works with formtastic, simple_form or default forms
gem 'cocoon'

# A Ruby gem to load environment variables from `.env`
gem 'dotenv-rails'

# Flexible authentication solution for Rails with Warden.
gem 'devise'

# Manage Procfile-based applications
gem 'foreman'

# Create uniques random tokens for any model in ruby on rails. Backport of ActiveRecord::SecureToken 5 to AR 3.x and 4.x
gem 'has_secure_token'

# Easily include static pages in your Rails app.
#gem 'high_voltage', '~> 3.0.0'

ruby '2.4.3'
