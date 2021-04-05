require 'rails_helper'

describe 'Issue Facade' do
  it 'get rails issues' do
    issues = IssueFacade.fetch_data
    expect(issues).to be_an(Array)
    expect(issues.first).to be_a(Issue)
    expect(issues.first.title).to be_a(String)
    expect(issues.first.state).to be_a(String)
    expect(issues.first.body).to be_a(String)
    expect(issues.first.user).to be_a(String)
    expect(issues.first.comments).to be_a(Integer)
  end
end