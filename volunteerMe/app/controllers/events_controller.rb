class EventsController < ApplicationController
  def index
   @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    @event.update_attributes(event_params)

    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:name, :id, :email)
  end
end
