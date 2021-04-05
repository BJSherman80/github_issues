class IssueFacade
    def self.fetch_data
        issues_data = GithubService.get_data

        issues_data.map do |data|
            Issue.new(data)
        end
    end
end