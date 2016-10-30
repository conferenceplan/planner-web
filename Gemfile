source "https://rubygems.org"
#
# Needed for installs
#
gem "rack", "1.4.5"
gem 'rake'
gem 'therubyracer',           :platforms => :ruby
gem 'libv8', '3.16.14.7', :platforms => :ruby
gem 'puma',                   :platforms => :ruby
gem 'turbo-sprockets-rails3'

gem 'nokogiri', '1.6.2.1'
gem "mysql2", "0.3.20"

gem 'bootstrap-sass', '3.1.1.0' #'~> 3.1'

gem 'enumerations_mixin', :git => 'git://github.com/balen/enumerations_mixin.git'

gem 'acts-as-taggable-on', "3.1.1"

gem 'i18n-active_record',
      :git => 'git://github.com/svenfuchs/i18n-active_record.git',
      :tag => 'rails-3.2',
      :require => 'i18n/active_record'

group :staging, :development do
  gem 'interpret', :git => 'git://github.com/balen/interpret.git'
end

# For locale in the route

gem "daemons"
gem 'delayed_job' 
gem 'delayed_job_active_record'

gem "figaro"

gem 'geocoder'
gem "select2-rails", '3.5.9.3'
gem 'country_select', github: 'stefanpenner/country_select'


# gem 'planner-core', path: "../planner-core"
# gem 'planner_konopas', path: "../planner_konopas"

gem 'planner-core',     '>=0.1', :git => 'git@github.com:conferenceplan/planner-core.git'
gem 'planner_konopas',  '>=0.1', :git => 'git@github.com:conferenceplan/planner_konopas.git'

# Needed for the new asset pipeline
group :assets do
  gem 'sass-rails',   '>= 3.2'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '= 2.5.1'
  gem 'yui-compressor'
end

group :development do
  gem 'seed_dump', '0.5.3'
end
