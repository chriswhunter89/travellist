class Destination < ApplicationRecord
  belongs_to :user
  has_many :tasks
  has_many :memories, through: :tasks

  validates :name, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
end
