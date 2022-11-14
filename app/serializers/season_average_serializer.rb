class SeasonAverageSerializer < ActiveModel::Serializer
  attributes :id, :games_played, :player_id, :season, :min, :fgm, :fga, :fg3m, :fg3a, :ftm, :fta, :oreb, :dreb, :reb, :ast, :stl, :blk, :turnover, :pf, :pts, :fg_pct, :fg3_pct, :ft_pct, :stats_id
end
