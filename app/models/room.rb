class Room < ApplicationRecord  
  has_many :room_users
  has_many :users, through: :room_users

  validates :name, presence: true
  validates :rules, presence: true

end
