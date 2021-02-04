class Listing < ActiveRecord::Base
    belongs_to :neighborhood
    belongs_to :host, :class_name => "User" 
    has_many :reservations, :class_name => "Reservation"
    has_many :reviews, through: :reservations

end