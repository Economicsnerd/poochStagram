class Pooch < ApplicationRecord
  has_many :likes
  has_one_attached :photo
  # public or private
  scope :published, -> { where(published: false) }
  # validation
  validates :photo, presence: true
  validates :name, presence: true

end
