require 'spec_helper'

describe 'NY Time app' do
  context 'semantic API works correctly' do
    before(:all) do
      @state = NYTApp.new.random
      @random_state = @state.random_state
      @nyt_app = NYTApp.new.semantic_service
      @nyt_app.retrieve_semantics(@random_state)
    end
    
    it 'should return results as a hash' do
      expect(@nyt_app.retrieve_info).to be_kind_of(Hash)
    end

    it 'should return a status of OK' do
      expect(@nyt_app.retrieve_status).to eq('OK')
    end

    it 'should return a copyright as a string' do
      expect(@nyt_app.retrieve_copyright).to be_kind_of(String)
    end

    it 'should return a copyright containing the word copyright' do
      expect(@nyt_app.retrieve_copyright).to include('Copyright')
    end

    it 'should return the number of results as an integer' do
      expect(@nyt_app.retrieve_num_results).to be_kind_of(Integer)
    end

    it 'should return the fields searched as an array' do
      expect(@nyt_app.retrieve_fields).to be_kind_of(Array)
    end

    it 'should return the results as an array' do
      expect(@nyt_app.retrieve_results).to be_kind_of(Array)
    end

    it 'should return the concept id as an integer' do
      expect(@nyt_app.retrieve_concept_id).to be_kind_of(Integer)
    end

    it 'should return the concept name as a string' do
      expect(@nyt_app.retrieve_concept_name).to be_kind_of(String)
    end

    it 'should return the same concept name as input' do
      expect(@nyt_app.retrieve_concept_name).to eq(@random_state)
    end

    it 'should return "is times tag" as an integer' do
      expect(@nyt_app.retrieve_is_times_tag).to be_kind_of(Integer)
    end

    it 'should return "is times tag" as either one or zero' do
      expect(@nyt_app.retrieve_is_times_tag).to eq(1) | eq(0)
    end

    it 'should return "is sensitive" as an integer' do
      expect(@nyt_app.retrieve_is_sensitive).to be_kind_of(Integer)
    end

    it 'should return "is sensitive" as either one or zero' do
      expect(@nyt_app.retrieve_is_sensitive).to eq(1) | eq(0)
    end

    it 'should return the concept status as a string' do
      expect(@nyt_app.retrieve_concept_status).to be_kind_of(String)
    end

    it 'should return the vernacular as a string' do
      expect(@nyt_app.retrieve_concept_status).to be_kind_of(String)
    end

    it 'should return the vernacular as either active or inactive' do
      expect(@nyt_app.retrieve_concept_status).to eq('Active') | eq('Inactive')
    end

    it 'should return the concept type as a string' do
      expect(@nyt_app.retrieve_concept_type).to be_kind_of(String)
    end

    it 'should return the concept created as a string' do
      expect(@nyt_app.retrieve_concept_created).to be_kind_of(String)
    end

    it 'should return the concept updated as a string or null' do
      expect(@nyt_app.retrieve_concept_updated).to be_kind_of(String) | be(nil)
    end

    it 'should return the links as an array' do
      expect(@nyt_app.retrieve_links).to be_kind_of(Array)
    end
  end
end