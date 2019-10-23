class Sale < ApplicationRecord
  belongs_to :game_name
  belongs_to :developer_name
  belongs_to :publisher_name
  belongs_to :genre_name
  belongs_to :platform_name

  validates :game_rank, :na_sales, :jp_sales, :global_sales, presence: true
  validates :na_sales, :jp_sales, :global_sales, numericality: { only_decimal: true }
end
