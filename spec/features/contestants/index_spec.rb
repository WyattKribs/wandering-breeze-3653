require 'rails_helper'

RSpec.describe 'contestant index page' do
  before :each do
    @contestant1 = Contestant.create!(name: "Cheryl Cher", age: 32,
      hometown: "Fort Worth", years_of_experience: 13)
    @project1 = Project.create!(name: "Dapper Hat", material: "Silk")
    @project2 = Project.create!(name: "Blondie", material: "Potato Sack")
  end

  it 'shows all the contestants names' do
    visit '/contestants'
    expect(page).to have_content('Cheryl Cher')
  end

  it 'shows the projects the contestants are involved with' do
    visit '/contestants'
    expect(page).to have_content('Dapper Hat')
  end
end
