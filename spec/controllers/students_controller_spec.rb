require 'rails_helper'

describe "POST create" do
  context "with valid attributes" do
    it "creates a new student" do
      puts "x" * 500
      puts FactoryGirl.attributes_for(:student)
      puts "x" * 500
      expect{
        post :create, student: FactoryGirl.attributes_for(:student)
      }.to change(Student,:count).by(1)
    end
    
    it "redirects to the new student" do
      post :create, student: FactoryGirl.attributes_for(:student)
      response.should redirect_to Student.last
    end
  end
end