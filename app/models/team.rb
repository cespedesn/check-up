class Team < ApplicationRecord
  has_many :players
  has_many :stats, through: :players
  belongs_to :user
end
