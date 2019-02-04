require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

# Class to hold semantics api methods
class Semantic
  include HTTParty

  APIKEY = ENV['SEMANTIC_API_KEY']

  base_uri 'http://api.nytimes.com/svc/semantic/v2/concept'

  def retrieve_semantics(location)
    @location_data = JSON.parse(self.class.get("/name/nytd_geo/#{location}?fields=all&api-key=#{APIKEY}").body)
  end

  def retrieve_results
    @location_data
  end

  def retrieve_status
    @location_data['status']
  end
end

test = Semantic.new
test.retrieve_semantics('Texas')
p test

# nytd_geo for a location

# nytd_per for a person

# nytd_org for an organization

# nytd_des for a descriptor
