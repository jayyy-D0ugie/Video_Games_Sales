class Platform < ApplicationRecord
  has_many :game
  has_many :sale

  validates :platform_name, presence: true
end
