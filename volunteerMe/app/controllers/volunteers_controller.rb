class VolunteersController < ApplicationController

  def index
    @volunteers = Volunteer.all
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def update
    @volunteer.update_attributes(user_params)

    redirect_to @volunteer
  end

  def destroy
    @volunteer = Volunteer.find(params[:id])
    @volunteer.destroy

    redirect_to volunteers_path
  end

end
