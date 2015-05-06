require 'spec_helper'

describe "Creating a new project" do
  it "saves the project and shows the new project's details" do
    visit projects_url
    
    click_link 'Add New Project'

    expect(current_path).to eq(new_project_path)

    fill_in 'Name', with: "New Experimental Project"

    click_button 'Create Project'

    expect(current_path).to eq(project_path(Project.last))

    expect(page).to have_text('New Experimental Project')
  end
end


