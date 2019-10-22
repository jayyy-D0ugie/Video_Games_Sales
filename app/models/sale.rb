class Sale < ApplicationRecord
  belongs_to :game_name
  belongs_to :developer_name
  belongs_to :publisher_name
  belongs_to :genre_name
  belongs_to :platform_name
end
