class VolunteersController < ApplicationController

  def index
    @volunteers = Volunteer.all
  end

  def show

  end

end
