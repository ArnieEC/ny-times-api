require 'spec_helper'

describe 'NY Time app' do
  context 'semantic API works correctly' do
    before(:all) do
      @chosen_state = 'Texas'
      @nyt_app = NYTApp.new.semantic_service
      @nyt_app.retrieve_semantics(@chosen_state)
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
      expect(@nyt_app.retrieve_concept_name).to eq(@chosen_state)
    end

  end
end