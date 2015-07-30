source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
#Herramientas de testing
gem "rspec-rails", "~> 3.0"#, :group => [:development, :test] #https://github.com/rspec/rspec-rails
# Ayuda a simular cómo usarían los usuarios la aplicación.
gem "capybara", "~> 2.4.4"#, :group => :test #https://github.com/jnicklas/capybara
# Es un set de estrategias para eliminar la base de datos en Rails.
gem "database_cleaner", "~> 1.4.0", :group => :test #https://github.com/DatabaseCleaner/database_cleaner
# Es una colección de tests de RSpec para que corran mejor los tests de correos.
gem "email_spec", "~> 1.6.0"#, :group => :test #https://github.com/bmabey/email-spec
# Reemplaza a las fixtures a la hora de hacer factorías de modelos para rellenar la DB.
gem "factory_girl_rails", "~> 4.5.0"#, :group => [:development, :test] #https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
# Un pequeño framework de tests para complementar RSpec.
gem "minitest" #, "~> 5.5.1"#, :group => :test #https://github.com/seattlerb/minitest
# Genera datos falsos para rellenar factorías de la DB.
gem 'faker', '~> 1.4.3'#, :group => [:development, :test]
# Permite acceder a las session dentro del ambiente de tests. #https://github.com/railsware/rack_session_access
gem 'rack_session_access', "~> 0.1.1"#, :group => [:development, :test]
## Benchmarking and code analytics
# Rails Best Practices can be run with: rails_best_practices -f html
gem "rails_best_practices", :group => [:development, :test]
# Rubocop can be run with the following examples:
# rubocop -R app/models/ -o doc/rubocop_models.txt
# rubocop -R app/controllers/ -o doc/rubocop_controllers.txt
# rubocop -R -o doc/rubocop_all.txt
gem 'rubocop', require: false, :group => [:development, :test]
# To use folow the instructions on https://github.com/colszowka/simplecov
gem 'simplecov', :require => false#, :group => [:development, :test]
# test javascripts code
# gem 'capybara-webkit', :group => :test
gem 'selenium-webdriver'#, :group => :test
gem "chromedriver-helper"#, :group => :test


#subir archivos usando AmazonS3
gem 'cocaine', '~> 0.5.3'
gem 'paperclip'
gem 'aws-sdk', '1.50.0'
gem 's3_direct_upload' # direct upload form helper and assets

#PDF
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
#assets
gem 'sass-rails', '~> 5.0'
gem 'material_design_lite-rails'
gem "haml-rails", ">= 0.5.3"
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'jquery-turbolinks'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem "paranoia", "~> 2.0"
gem "bcrypt-ruby", '~> 3.1.2', :require => "bcrypt"
# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  #gem 'debugger'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

