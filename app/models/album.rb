class Album < ApplicationRecord
  belongs_to :destination
  has_many_attached :album_photos

  validates :title, presence: true
end
