require 'chefspec'
require 'chefspec/berkshelf'
require 'coveralls'

Coveralls.wear!
ChefSpec::Coverage.start!

RSpec.configure do |config|
  config.log_level = :warn
end
