require 'rails_helper'

RSpec.describe Volunteer, type: :model do


 it "should have name and email" do
    expect { Volunteer.create!({}) }.to raise_error(ActiveRecord::RecordInvalid)
 end

 it "should have unique email" do
  vol1 = Volunteer.create!(name:"Tester", email: "test@gmail.com", password: "12345678")
  vol2 = Volunteer.create(name:"Tester1", email: "test@gmail.com", password: "12345678")
  expect(vol2.errors[:email]).to include("has already been taken")
 end

 it "should have email with proper format" do
  vol3 = Volunteer.create(name:"Tester", email: "test", password: "12345678")
  expect(vol3.errors[:email]).to include("is invalid")
 end


end
