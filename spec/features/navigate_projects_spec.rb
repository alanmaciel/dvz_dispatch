require 'spec_helper'

describe 'Navigating projects' do
  it "allows navigation from the detail page to the listing page" do
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
    
    click_link "All Projects"
    
    # Assert
    expect(current_path).to eq (projects_path)
  end
end
