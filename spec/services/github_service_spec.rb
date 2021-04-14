require 'rails_helper'

 describe 'github Service' do 
    it 'can get data from github api' do
    search_results = GithubService.get_data(nil)
      expect(search_results).to be_a(Array)
      expect(search_results.first).to be_an(OpenStruct)
      expect(search_results.first).to respond_to(:title)
      expect(search_results.first).to respond_to(:user)
      expect(search_results.first).to respond_to(:labels)
      expect(search_results.first).to respond_to(:state)
      expect(search_results.first).to respond_to(:body)
      expect(search_results.first).to respond_to(:comments)
    end
 end