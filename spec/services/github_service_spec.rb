require 'rails_helper'

 describe 'github Service' do 
    it 'can get data from github api' do
    search_results = GithubService.get_data
      expect(search_results).to be_a(Array)
      #first_result = search_results.first
      expect(search_results.first).to have_key(:title)
      expect(search_results.first).to have_key(:user)
      expect(search_results.first[:user]).to have_key(:login)
      expect(search_results.first).to have_key(:state)
      expect(search_results.first).to have_key(:body)
      expect(search_results.first).to have_key(:comments)
    end
 end