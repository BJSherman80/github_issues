class GithubService

    def self.get_data
        issues = []
        labels = ["actioncable","actionmailer","actionpack","actionview","activejob","activemodel","activerecord","activestorage","activesupport", "activepipeline"]
            labels.each do |label|
             response = conn.get("/repos/rails/rails/issues") do |req|
                 req.params[:labels] = label
                 req.params[:state] = "open"
                 req.params[:assignee] = "none"
                 req.params[:per_page] = 5
             end
            issues << JSON.parse(response.body, symbolize_names: true)
            end
     return issues.flatten
    end

    # def self.get_data
    #  response = conn.get("/repos/rails/rails/issues") do |req|
    #     #req.params[:labels] = "actioncable,actionmailer,actionpack,actionview,activejob,activemodel,activerecord,activestorage,activesupport"
    #     req.params[:state] = "open"
    #     req.params[:assignee] = "none"
    #     req.params[:sort] = "comments"
    #     req.params[:direction] = "desc"
    #     req.params[:per_page] = 5
    #  end
    #  JSON.parse(response.body, symbolize_names: true)
    # end
  
    private
  
    def self.conn
      Faraday.new(url: "https://api.github.com") do |f|
        f.headers[:authorization] = "token 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"
      end
    end
  
  end
  