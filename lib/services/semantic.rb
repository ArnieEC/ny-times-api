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

  def retrieve_links_concept_id
    links_concept_id = []
    retrieve_links.each { |links|
      links_concept_id << links['concept_id']
    }
    links_concept_id
  end

  def retrieve_links_concept_name
    links_concept_name = []
    retrieve_links.each { |links|
      links_concept_name << links['concept_name']
    }
    links_concept_name
  end

  def retrieve_links_link_id
    links_link_id = []
    retrieve_links.each { |links|
      links_link_id << links['link_id']
    }
    links_link_id
  end

  def retrieve_teragram
    retrieve_results[0]['teragram']
  end

  def retrieve_geocodes
    retrieve_results[0]['geocodes']
  end

  def retrieve_geocodes_latitude
    geocodes_latitude = []
    retrieve_geocodes.each { |geocodes|
      geocodes_latitude << geocodes['latitude']
    }
    geocodes_latitude
  end

  def retrieve_geocodes_longitude
    geocodes_longitude = []
    retrieve_geocodes.each { |geocodes|
      geocodes_longitude << geocodes['longitude']
    }
    geocodes_longitude
  end
end
