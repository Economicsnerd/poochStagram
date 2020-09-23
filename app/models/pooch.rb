class Pooch < ApplicationRecord
  has_many :likes
  has_one_attached :photo
  belongs_to :user
  # public or private
  scope :published, -> { where(published: true) }
  # validation
  validates :photo, presence: true
  validates :name, presence: true

end
