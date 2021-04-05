require 'rails_helper'

describe Issue do
  it 'exists' do
    attr = {
      title: 'bug',
      user: {login: "brett"},
      labels:[{name: "actionmailer"}],
      state: "open",
      body: "There is a bug!",
      comments: 5
    }

    issue = Issue.new(attr)

    expect(issue).to be_a(Issue)
    expect(issue.title).to eq('bug')
    expect(issue.user).to eq('brett')
    expect(issue.state).to eq('open')
    expect(issue.body).to eq("There is a bug!")
    expect(issue.comments).to eq(5)
  end
end