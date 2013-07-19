require 'rspec/autorun'
require 'ostruct'
require 'rr'
require 'fakeweb'

RSpec.configure do |config|
  config.mock_with :rr
end