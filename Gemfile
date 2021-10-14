source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'image_processing', '~> 1.12', '>= 1.12.1'
gem 'mini_magick', '~> 4.11'
gem 'active_storage_validations', '~> 0.9.5'
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'faker', '~> 2.18'
gem 'will_paginate', '~> 3.3', '>= 3.3.1'
gem 'bootstrap-will_paginate', '~> 1.0'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'bulma-rails', '~> 0.9.1'
gem "aws-sdk-s3", require: false
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'pg', '~> 1.2', '>= 1.2.3'
  gem 'byebug',  '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',           '4.0.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.1.0'  
end

group :test do
  gem 'capybara',                 '3.28.0'
  gem 'selenium-webdriver',       '3.142.4'
  gem 'webdrivers',               '4.1.2'
  gem 'rails-controller-testing', '1.0.4'
  gem 'minitest',                 '5.11.3'
  gem 'minitest-reporters',       '1.3.8'
  gem 'guard',                    '2.15.0'
  gem 'guard-minitest',           '2.4.6'
end

group :production do
  gem 'pg', '~> 1.2', '>= 1.2.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]