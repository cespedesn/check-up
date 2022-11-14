class Stat < ApplicationRecord
  belongs_to :player
  belongs_to :season_average
end
