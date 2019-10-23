class Developer < ApplicationRecord
  has_many :games
  has_many :sales
end
