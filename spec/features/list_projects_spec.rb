require 'spec_helper'

describe 'Viewing the list of projects' do
  it 'shows the projects' do
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

    project2 = Project.create(name: "Ever ready",
                              short_name: "EVE",
                              code_name: "ADAM",
                              creation_date: "2012-02-03",
                              release_date: "2012-03-05",
                              description: "A project to be ever, ever ready",
                              subsystems: "Apollo ver 1.5 and Submission 3.0",
                              last_release_date: "2014-10-04",
                              last_release_time: "22:03",
                              last_release_version: "2.0.0",
                              last_release_description: "Where all this features come from?, I don't remember those in the backlog..",
                              last_release_deployer: "Karina Thorpe",
                              next_release_date: "2015-06-01",                              
                              next_release_time: "14:00",
                              next_release_version: "2.1.0",
                              next_release_description: "A lot of fixes I prefer not to list everything here is a shame to me.",
                              next_release_deployer:"Oscar Wild")

    project3 = Project.create(name: "Digitalizing people",
                              short_name: "DPL",
                              code_name: "Madrid",
                              creation_date: "2013-01-01",
                              release_date: "2013-02-16",
                              description: "A project to digitalize everything in the office, even people",
                              subsystems: "Submission 3.0",
                              last_release_date: "2014-12-13",
                              last_release_time: "09:55",
                              last_release_version: "3.0.0",
                              last_release_description: "This is the MVP on steroids we tried to include everything here so we don't have to worry to include anything else later this year.",
                              last_release_deployer: "Karina Thorpe",
                              next_release_date: "2015-09-23",                              
                              next_release_time: "12:00",
                              next_release_version: "4.0.0",
                              next_release_description: "Really? I don't want to list here a thing.",
                              next_release_deployer:"Oscar Wild")



    # Act
    visit projects_url
    # Assert
    expect(page).to have_text("3 Projects")
    expect(page).to have_text(project1.name)
    expect(page).to have_text(project2.name)
    expect(page).to have_text(project3.name)
  end
end
