source "https://rubygems.org"
#
# Needed for installs
#
gem "rack", "1.4.5"
gem 'rake' #, '0.8.7'
gem 'therubyracer', :platforms => :ruby
gem 'puma', :platforms => :ruby
gem 'turbo-sprockets-rails3'

# gem 'rack-fiber_pool' # event based investigation
# gem 'eventmachine'
# gem 'thin'
# gem "em-synchrony"
# gem 'websocket-rails' # for async comms with JS, needs event based server

platform :rbx do
  gem "racc", "1.4.9"
  gem "rubysl"
  gem "rdoc"
  gem "test-unit"
  gem "newrelic_rpm"
end

# gem 'actionmailer' 
# gem 'activerecord' 
# gem "rails", "~> 3.2.17"

gem 'enumerations_mixin', :git => 'git://github.com/balen/enumerations_mixin.git'

# gem 'rack-jsonp-middleware', :require => 'rack/jsonp'
# gem 'yajl-ruby'

# 
# gem "browser"
# 

# gem 'rack-mini-profiler'
# gem 'flamegraph'
# gem 'memory_profiler'

gem 'i18n-active_record',
      :git => 'git://github.com/svenfuchs/i18n-active_record.git',
      :tag => 'rails-3.2',
      :require => 'i18n/active_record'
gem 'interpret'

# # For locale in the route
# gem 'routing-filter'

gem 'planner-core', path: "/Users/balen/workspaces/grenadine/planner-core"

# Needed for the new asset pipeline
group :assets do
  gem 'sass-rails',   '>= 3.2'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
  gem 'yui-compressor'
end

group :development do
  # bundler requires these gems in development
  # gem 'ruby-debug-ide'
  gem 'seed_dump', '0.5.3'
  gem 'capistrano', '2.15.5'
  gem 'rvm-capistrano', '1.5.0'

  #gem 'capistrano-puma', '0.0.1', require: false, group: :development
  #gem 'capistrano', '~> 3.0', require: false, group: :development
  #gem 'capistrano-rails', require: false, group: :development
  #gem 'capistrano-bundler', require: false, group: :development
end
