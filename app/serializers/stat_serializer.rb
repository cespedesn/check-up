class StatSerializer < ActiveModel::Serializer
  attributes :id, :ast, :blk, :dreb, :fg3_pct, :fg3a, :fg3m, :fg_pct, :fga, :fgm, :ft_pct, :fta, :ftm
  has_one :player
  has_one :season_average
end
