class SuperpowersController < ApplicationController

  def edit
    @superpower = Superpower.find(params[:id])
    @volunteer = Volunteer.find(params[:volunteer_id])
  end

  def create
    @volunteer = Volunteer.find(params[:volunteer_id])
    @superpower = @volunteer.superpowers.create(superpower_params)
    redirect_to volunteer_path(@volunteer)
    authorize! :create, @superpower
  end

  def update
    @volunteer = Volunteer.find(current_volunteer.id)
    @superpower = Superpower.find(params[:id])
    @superpower.update(superpower_params)
    redirect_to volunteer_path(@volunteer)
    authorize! :update, @superpower
  end

  def destroy
    @volunteer = Volunteer.find(params[:volunteer_id])
    @superpower = Superpower.find(params[:id])
    @superpower.destroy
    redirect_to volunteer_path(@volunteer)
    authorize! :destroy, @superpower
  end

  private
    def superpower_params
      params.require(:superpower).permit(:name,:volunteer_id)
    end

    def volunteer_params
      params.require(:volunteer).permit(:volunteer_id)
    end

end
