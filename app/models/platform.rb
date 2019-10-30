class Platform < ApplicationRecord
  has_many :games
  has_many :sales

  validates :platform_name, presence: true
end
