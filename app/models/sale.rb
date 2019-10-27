class Sale < ApplicationRecord
  belongs_to :game
  belongs_to :developer
  belongs_to :publisher
  belongs_to :genre
  belongs_to :platform

  validates :game_rank, :na_sales, :jp_sales, :global_sales, presence: true
  validates :na_sales, :jp_sales, :global_sales, numericality: { only_decimal: true }
end
