source "https://rubygems.org"
#
# Needed for installs
#
gem "rack", "1.4.5"
gem 'rake' #, '0.8.7'
gem 'therubyrhino', :platforms => :jruby
gem 'therubyracer', :platforms => :ruby
gem 'puma'
gem 'turbo-sprockets-rails3'

gem 'nokogiri', '1.6.2.1'
gem 'bootstrap-sass', '3.1.1.0' #'~> 3.1'

gem 'activerecord-jdbcmysql-adapter', platform: :jruby
gem "mysql2", platforms: [:rbx, :mri]  #, '= 0.3.15' # cause there is an issue with 0.3.16

platform :rbx do
  gem "racc", "1.4.9"
  gem "rubysl"
  gem "rdoc"
  gem "test-unit"
end

gem 'enumerations_mixin', :git => 'git://github.com/balen/enumerations_mixin.git'

gem 'acts-as-taggable-on', "3.1.1"

gem 'i18n-active_record',
      :git => 'git://github.com/svenfuchs/i18n-active_record.git',
      :tag => 'rails-3.2',
      :require => 'i18n/active_record'
gem 'interpret'

# For locale in the route

gem "daemons"
gem 'delayed_job' 
gem 'delayed_job_active_record'

gem "figaro"

gem 'planner-core',     '>=0.1', :git => 'git://git.code.sf.net/p/conferenceplan/planner-core'
gem 'planner_konopas',  '>=0.1', :git => 'git://git.code.sf.net/p/conferenceplan/planner_konopas'

# gem 'planner-core', path: "/Users/balen/Projects/planner-core"
# gem 'planner_konopas', path: "/Users/balen/Projects/planner_konopas"

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
