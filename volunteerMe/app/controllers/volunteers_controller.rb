class VolunteersController < ApplicationController
  load_and_authorize_resource

  def index
    # @volunteer = Volunteer.find(params[:id])
    @events = Event.all
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
    @superpower = Superpower.new
    # unauthorized! if current_volunteer.id != @volunteer.id
  end


  def update
    @volunteer = Volunteer.find(params[:id])

      if @volunteer.update(volunteer_params)
        redirect_to @volunteer
      else
        render 'edit'
      end

  end

  def destroy
    @volunteer = Volunteer.find(params[:id])
    @volunteer.destroy
    redirect_to volunteers_path
  end

  private
    def volunteer_params
      params.require(:volunteer).permit(:name, :email)
    end

    def superpower_params
      params.require(:superpower).permit(:name)
    end


end
