class Genre < ApplicationRecord
  has_many :games
  has_many :sales
  
  validates :genre_name, presence: true
end
