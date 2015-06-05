require 'spec_helper'

describe 'A project' do
  it "is a released project if the released_at is not nil" do
    project = Project.new(release_date: '2014-12-11')

    expect(project.released?).to eq(true)
  end

  it "is released when the released on date is in the past" do
    project = Project.create(project_attributes(release_date: 3.months.ago))

    expect(Project.released).to include(project)
  end

  it "is not released when the release date is in the future" do
    project = Project.create(project_attributes(release_date: 3.months.from_now))
  
    expect(Project.released).not_to include(project)
  end

  it "returns released projects ordered with the most recently-released projects first" do
    project1 = Project.create(project_attributes(release_date: 3.months.ago))
    project2 = Project.create(project_attributes(release_date: 2.months.ago))
    project3 = Project.create(project_attributes(release_date: 1.months.ago))

    expect(Project.released).to eq([project3, project2, project1])
  end
end
