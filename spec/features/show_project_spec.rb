require 'spec_helper'

describe "Viewing project" do
  it "shows the project's details" do
    # Arrange
    project = Project.create(project_attributes)
    # Act
    visit project_url(project)
    # Assert
    expect(page).to have_text(project.name)
    expect(page).to have_text(project.short_name)
    expect(page).to have_text(project.code_name)
    expect(page).to have_text(project.creation_date)
    expect(page).to have_text(project.release_date)
    expect(page).to have_text(project.description)
    expect(page).to have_text(project.subsystems)
    expect(page).to have_text(project.last_release_date)
    expect(page).to have_text(project.last_release_time)
    expect(page).to have_text(project.last_release_description)
    expect(page).to have_text(project.last_release_deployer)
    expect(page).to have_text(project.next_release_date)
    expect(page).to have_text(project.next_release_time)
    expect(page).to have_text(project.next_release_version)
    expect(page).to have_text(project.next_release_description)
    expect(page).to have_text(project.next_release_deployer)
    expect(page).to have_text(project.documentation)
    expect(page).to have_text(project.repo_location)
    expect(page).to have_text(project.hosting)
  end
  
  it "shows 'Not Released yet' if the release_date is not present" do
    project = Project.create(project_attributes(release_date: nil))

    visit project_url(project)

    expect(page).to have_text("Not Released yet")
  end
  
  it "shows 'Released' if the release_date is present" do
    project = Project.create(project_attributes(release_date: nil))

    visit project_url(project)

    expect(page).to have_text("Released")
  end
end
