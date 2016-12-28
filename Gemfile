source "https://rubygems.org"
#
# Needed for installs
#
gem "rack" #, "1.4.5"
gem 'rake'
gem 'therubyracer',           :platforms => :ruby
gem 'libv8', '3.16.14.7', :platforms => :ruby
gem 'puma',                   :platforms => :ruby
gem 'turbo-sprockets-rails3'

gem 'nokogiri', '1.6.2.1'
gem "mysql2", "0.3.20"

gem 'bootstrap-sass' #, '3.1.1.0' #'~> 3.1'

# gem 'enumerations_mixin', :git => 'git://github.com/balen/enumerations_mixin.git'
# gem 'enumerations_mixin', path: "../enumerations_mixin"
gem 'power_enum'

gem 'acts-as-taggable-on' #, "3.1.1"

# gem 'rails-i18n', '~> 4.0.0' # For 4.0.x
gem 'i18n-active_record',
      :require => 'i18n/active_record'
      # :git => 'git://github.com/svenfuchs/i18n-active_record.git',
      # :tag => 'rails-3.2',

# gem 'activerecord-deprecated_finders', require: 'active_record/deprecated_finders'

# group :staging, :development do
  # gem 'interpret', :git => 'git://github.com/balen/interpret.git'
# end
group :development do
  gem 'rb-readline'
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

gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'

gem 'jbuilder', '~> 1.2'

# Needed for the new asset pipeline
# group :assets do
  # gem 'sass-rails',   '>= 3.2'
  # gem 'compass-rails'
  # gem 'coffee-rails', '~> 3.2.1'
  # gem 'uglifier', '= 2.5.1'
  # gem 'yui-compressor'
# end

group :development do
  # gem 'seed_dump', '0.5.3'
end
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
    