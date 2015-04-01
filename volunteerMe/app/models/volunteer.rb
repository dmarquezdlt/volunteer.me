class Volunteer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  has_many :volunteer_events
  has_many :events, through: :volunteer_events
  has_many :superpowers

  ## For uploading pics
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "https://findinit.files.wordpress.com/2015/03/volunteer_hero.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
