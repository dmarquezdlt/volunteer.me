class EventsController < ApplicationController
  def index
   @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @org = @event.organization
  end

  def new
    @event = Event.new
  end

  def edit
    @organization = Organization.find(params[:organization_id])
    @event = Event.find(params[:id])
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @event = @organization.events.create(event_params)
    redirect_to organization_path(@organization)
  end

  def update
    @event = Event.find(params[:id])
    @organization = Organization.find(params[:organization_id])
    if @event.update(event_params)
      redirect_to organization_path(@organization)
    else
      render 'edit'
    end
  end

  def destroy
    @organization = Organization.find(params[:organization_id])
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to organization_path(@organization)
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :requirements, :commitment_type, :date, :time_start, :time_end, :address, :city, :state, :country, :spots)
  end
end
