class Destination < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_many :albums, dependent: :destroy

  validates :name, presence: true
end
