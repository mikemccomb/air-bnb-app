class Room < ApplicationRecord
  has_many :roomimages
  has_many :reservations
  has_many :users, through: :reservations
end
