class IssuesController < ApplicationController 
    def index
      issues = IssueFacade.fetch_data
      if params[:sort] == "max"
        @issues = issues.sort_by(&:comments).reverse
      else
        @issues = issues.sort_by(&:comments)
      end
    end
end 