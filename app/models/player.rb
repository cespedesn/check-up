class Player < ApplicationRecord
  has_many :stats
  has_many :season_averages, through: :stats
  belongs_to :team
end
