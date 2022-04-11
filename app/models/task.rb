class Task < ApplicationRecord
  belongs_to :destination

  validates :title, presence: true
  validates :notes, presence: true
end
