require 'spec_helper'

describe 'A project' do
  it "is a released project if the released_at is not nil" do
    project = Project.new(release_date: '2014-12-11')

    expect(project.released?).to eq(true)
  end
end
