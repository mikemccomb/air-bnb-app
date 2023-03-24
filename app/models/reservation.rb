class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :reviews

  def total_cost
    nights = reservation.end_date - reservation.start_date
    total = nights * room.price
    return total
  end
end
