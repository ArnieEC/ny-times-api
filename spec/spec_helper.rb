require 'json'
require 'httparty'
require_relative '../lib/NYT_app'
require_relative '../lib/services/semantic'

RSpec.configure do |config|
  config.formatter = :documentation
end
