class Pooch < ApplicationRecord
  has_many :likes
  has_one_attached :photo
end
