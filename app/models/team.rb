class Team < ApplicationRecord
  has_many :user_teams
  has_many :players
  has_many :users, through: :user_teams
  
end
