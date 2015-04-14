require 'spec_helper'

describe 'Viewing the list of projects' do
  it 'shows the projects' do
    # Arrange
    # Act
    visit 'http://example/projects'
    # Assert
    expect(page).to have_text("3 Projects")
  end
end
