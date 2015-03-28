require 'rails_helper'

RSpec.describe VolunteersController, type: :controller do


  let(:valid_attributes) {
    {
      name: "Volunteer 1",
      email: "volu@teer.org",
      password: "12345678"
    }
  }

  describe "GET#index" do
    it "assigns all volunteers to @volunteers" do
      volunteer = Volunteer.create! valid_attributes
      get :index
      expect(assigns(:volunteers)).to eq([volunteer])
    end
  end
end
