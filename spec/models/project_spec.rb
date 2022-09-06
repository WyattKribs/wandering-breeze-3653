require 'rails_helper'


RSpec.describe Project, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :material}
  end

  describe "relationships" do
    it {should belong_to :challenge}
    it {should have_many :contestant_projects}
    it {should have_many(:contestants).through(:contestant_projects)}
  end

  
  describe "methods" do
    before :each do
      @challenge = Challenge.create!(theme: "Olde Schoole", project_budget: 500)
      @project = Project.create!(name: "Dapper Hat", material: "Silk", challenge_id: @challenge.id)
    end

    it "tests the challenge_name method" do
      expect(@project.challenge_name).to eq("Olde Schoole")
    end
  end
end
