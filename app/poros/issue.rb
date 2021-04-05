class Issue
    attr_reader :title, :user, :labels, :state, :body, :comments
    def initialize(issues_data)
      @title = issues_data[:title]
      @user = issues_data[:user][:login] 
      @labels = issues_data[:labels][0][:name]
      @state =  issues_data[:state]
      @body = issues_data[:body]
      @comments = issues_data[:comments]
    end
  end