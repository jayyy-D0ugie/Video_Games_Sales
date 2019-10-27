class Genre < ApplicationRecord
  has_many :game
  has_many :sale

  validates :genre_name, presence: true
end
