require 'spec_helper'

describe "Viewing project" do
  it "shows the project's details" do
    # Arrange
    project1 = Project.create(name: "Accounting",
                              short_name: "ACC",
                              code_name: "Alpha",
                              creation_date: "2013-01-23",
                              release_date: "2013-08-29",
                              description: "Accountin is a secret project for a secret agency. Nuff said. Go away.",
                              subsystems: "Apollo ver 1.2.3",
                              last_release_date: "2014-12-24",
                              last_release_time: "23:35",
                              last_release_version: "1.0.0",
                              last_release_description: "A lot of features, I don't remember anything you know?",
                              last_release_deployer: "Josh Lones",
                              next_release_date: "2015-05-10",                              
                              next_release_time: "20:00",
                              next_release_version: "1.2.0",
                              next_release_description: "A lot of fixes I prefer not to list everything here is a shame to me.",
                              next_release_deployer:"Oscar Wild")

    # Act
    visit project_url(project1)
    # Assert
    expect(page).to have_text(project1.name)
    expect(page).to have_text(project1.short_name)
    expect(page).to have_text(project1.code_name)
    expect(page).to have_text(project1.creation_date)
    expect(page).to have_text(project1.release_date)
    expect(page).to have_text(project1.description)
    expect(page).to have_text(project1.subsystems)
    expect(page).to have_text(project1.last_release_date)
    expect(page).to have_text(project1.last_release_time)
    expect(page).to have_text(project1.last_release_description)
    expect(page).to have_text(project1.last_release_deployer)
    expect(page).to have_text(project1.next_release_date)
    expect(page).to have_text(project1.next_release_time)
    expect(page).to have_text(project1.next_release_version)
    expect(page).to have_text(project1.next_release_description)
    expect(page).to have_text(project1.next_release_deployer)
    expect(page).to have_text(project1.documentation)
    expect(page).to have_text(project1.repo_location)
    expect(page).to have_text(project1.hosting)
  end
end
