class Event < ActiveRecord::Base
  belongs_to :organization

  has_many :volunteer_events
  has_many :volunteers, through: :volunteer_events

  include PgSearch
  multisearchable :against => [:name, :requirements, :commitment_type, :date, :city, :state, :country]
  # pg_search_scope :search_title, :against => [:name]
end
