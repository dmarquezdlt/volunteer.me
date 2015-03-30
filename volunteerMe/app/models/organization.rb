class Organization < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events, dependent: :destroy

  include PgSearch
  multisearchable :against => [:name, :category, :bio, :city, :state, :country]
end
