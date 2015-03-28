class Event < ActiveRecord::Base
  belongs_to :organization

  has_many :volunteer_events
  has_many :volunteers, through: :volunteer_events
end
