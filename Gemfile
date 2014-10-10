source 'https://rubygems.org'

gem 'chef'

group :lint do
  gem 'foodcritic'
  gem 'rubocop'
  gem 'rainbow'
end

group :unit do
  gem 'berkshelf', '>= 3.1'
  gem 'chefspec'
  gem 'knife-spec'
  gem 'coveralls', require: false
end

group :kitchen_common do
  gem 'test-kitchen'
end

group :kitchen_vagrant do
  gem 'kitchen-vagrant'
end

group :development do
  gem 'rb-fsevent'
  gem 'guard'
  gem 'guard-kitchen'
  gem 'guard-foodcritic'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'rake'
  gem 'fauxhai'
  gem 'pry-nav'
end
