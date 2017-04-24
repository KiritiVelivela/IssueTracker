source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

source 'https://rubygems.org'
ruby '2.4.0'

gem 'pg', '>=0.17.0'
gem 'rails', '>=5'
gem 'bcrypt'
gem 'bootstrap-sass'
gem 'jasny-bootstrap-rails'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-waypoints-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'sdoc',                   '0.4.0', group: :doc
gem 'lorem'
gem 'normalize-rails'
gem 'responders'
gem 'devise'
gem 'tinymce-rails'
gem 'web-console', group: :development

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'

  gem 'spring'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'capybara'
  gem 'database_cleaner'
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
  gem 'shoulda'
end

group :production do
  gem 'pg', '>=0.17.0'
  gem 'rails_12factor'
  gem 'puma'
end
