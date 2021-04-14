class IssuesController < ApplicationController 
    def index
      @issues = IssueFacade.fetch_data(params[:sort])
    end
end 