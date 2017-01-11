source "https://rubygems.org"
#
#
gem "rack"
gem 'rake'
gem 'therubyracer',                   :platforms => :ruby
gem 'libv8',            '3.16.14.15', :platforms => :ruby
gem 'puma',                           :platforms => :ruby

gem 'sass-rails',       '~> 5.0.0'
gem 'uglifier',         '~> 2.7.2'
gem 'coffee-rails',     '~> 4.1.0'

gem 'nokogiri',         '1.6.2.1'
gem "mysql2",           "0.3.20"

gem 'i18n-active_record', :require => 'i18n/active_record'

gem "daemons"
gem 'delayed_job' 
gem 'delayed_job_active_record'
gem "select2-rails",    '3.5.9.3'
gem 'country_select', github: 'stefanpenner/country_select'
gem 'jbuilder',         '~> 1.2'

group :development do
  gem 'rb-readline'
end

# gem 'planner-core', path: "../planner-core"
# gem 'planner_konopas', path: "../planner_konopas"

gem 'planner-core',     '>=0.1', :git => 'git@github.com:conferenceplan/planner-core.git', :branch => 'upgrade/rails42'
gem 'planner_konopas',  '>=0.1', :git => 'git@github.com:conferenceplan/planner_konopas.git', :branch => 'upgrade/rails42'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
