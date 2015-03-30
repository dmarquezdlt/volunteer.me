class Event < ActiveRecord::Base
  belongs_to :organization

  has_many :volunteer_events
  has_many :volunteers, through: :volunteer_events

  include PgSearch
  multisearchable :against => [:name, :description, :requirements, :commitment_type, :date, :time_start, :time_end, :city, :state, :country]
  # pg_search_scope :search_title, :against => [:name]
end
