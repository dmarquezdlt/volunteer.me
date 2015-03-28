class VolunteerEventsController < ApplicationController

  def new
    com = VolunteerEvent.create!(
      volunteer_id:params[:volunteer_id],
        event_id:params[:event],
        commited?:params[:commited]
        )
    redirect_to volunteer_path(params[:volunteer_id])
  end
end
