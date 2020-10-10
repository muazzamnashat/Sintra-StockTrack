source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 5.2'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'shotgun'
gem 'pry'
gem 'bcrypt'
gem 'tux'
gem 'finnhub_ruby'
gem 'sinatra-flash'
gem 'chartkick'
gem 'groupdate'

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end

group :development do
   gem 'sqlite3'
end

group :production do
   gem 'pg'
   gem 'activerecord-postgresql-adapter'
end