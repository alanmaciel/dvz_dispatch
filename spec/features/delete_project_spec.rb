require 'spec_helper'

describe "Delete a project" do
  it "destroy the project and shows the project listing" do
    project = Project.create(project_attributes)

    visit project_url(project)

    click_link 'Delete'

    expect(current_path).to eq(projects_path)

    expect(page).not_to have_text(project.name)
  end
end
