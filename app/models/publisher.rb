class Publisher < ApplicationRecord
  has_many :games
  has_many :sales
end
