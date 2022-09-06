require 'rails_helper'

RSpec.describe 'project showpage' do
  before :each do
    @challenge = Challenge.create!(theme: "Olde Schoole", project_budget: 500)
    @project1 = Project.create!(name: "Dapper Hat", material: "Silk", challenge_id: @challenge.id)
    @project2 = Project.create!(name: "Blondie", material: "Potato Sack", challenge_id: @challenge.id)
  end

  it 'shows the correct information' do
    visit "/projects/#{@project1.id}"
    expect(page).to have_content('Dapper Hat')
    expect(page).to have_content('Material: Silk')
    expect(page).to have_content('Challenge Theme: Olde Schoole')
  end

end
