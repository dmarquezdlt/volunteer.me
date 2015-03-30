module EventsHelper
  def commitment_array
    return ["one-time", "weekly", "monthly", "mentorship", "pro-bono", "workshop", "other"]
  end

  def commited_volunteers
    @event.volunteer_events.where(commited?: true).count
  end

end
