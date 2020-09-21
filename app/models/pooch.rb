class Pooch < ApplicationRecord
  has_many :likes
  has_one_attached :photo

  validates :photo, presence: true
  validates :name, presence: true  
end
