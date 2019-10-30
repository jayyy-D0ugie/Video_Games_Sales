class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :publisher
  belongs_to :developer
  belongs_to :platform

  validates :game_name, :year_of_release, presence: true
end