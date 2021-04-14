class IssueFacade
    def self.fetch_data(sort)
       GithubService.get_data(sort)
    end
end