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

  def retrieve_info
    @location_data
  end

  def retrieve_status
    @location_data['status']
  end

  def retrieve_copyright
    @location_data['copyright']
  end

  def retrieve_num_results
    @location_data['num_results']
  end

  def retrieve_fields
    @location_data['fields']
  end

  def retrieve_results
    @location_data['results']
  end

  def retrieve_concept_id
    retrieve_results[0]['concept_id']
  end

  def retrieve_concept_name
    retrieve_results[0]['concept_name']
  end

  def retrieve_is_times_tag
    retrieve_results[0]['is_times_tag']
  end

  def retrieve_is_sensitive
    retrieve_results[0]['is_sensitive']
  end

  def retrieve_concept_status
    retrieve_results[0]['concept_status']
  end

  def retrieve_concept_type
    retrieve_results[0]['concept_type']
  end

  def retrieve_concept_created
    retrieve_results[0]['concept_created']
  end

  def retrieve_concept_updated
    retrieve_results[0]['concept_updated']
  end

  def retrieve_links
    retrieve_results[0]['links']
  end
end

# test = Semantic.new
# test.retrieve_semantics('Texas')
# p test.retrieve_concept_id
