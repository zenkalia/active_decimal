$:.push File.expand_path( '..', __FILE__ )

require 'coveralls'
Coveralls.wear!

require 'rspec'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  puts 'sup bro'
end
