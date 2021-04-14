require 'ostruct'
class GithubService

    def self.get_data(sort = nil)
      sort = sort ||= 'asc'
     response = conn.get("/repos/rails/rails/issues") do |req|
        req.params["labels "] = "actioncable,actionmailer,actionpack,actionview,activejob,activemodel,activerecord,activestorage,activesupport"
        req.params[:state] = "open"
        req.params[:assignee] = "none"
        req.params[:sort] = "comments"
        req.params[:direction] = sort
        req.params[:per_page] = 5
      end
       issues = JSON.parse(response.body, symbolize_names: true)
       array = issues.map do |issue|
            OpenStruct.new({
              title: issue[:title],
              user: issue[:user][:login],
              labels: issue[:labels][0][:name],
              state: issue[:state],
              body: issue[:body],
              comments: issue[:comments]
            })
        end
    end
  
    private
  
    def self.conn
      Faraday.new(url: "https://api.github.com") do |f|
        f.headers[:authorization] = ENV['ACCESS_TOKEN']
      end
    end
end