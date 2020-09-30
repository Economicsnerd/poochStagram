class Pooch < ApplicationRecord
	
  # Associations
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :photo
  belongs_to :user

  # public or private
  scope :published, -> { where(published: true) }

  # Validation
  validates :photo, presence: true
  validates :name, presence: true

end
