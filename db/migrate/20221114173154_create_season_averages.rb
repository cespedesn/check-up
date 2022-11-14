class CreateSeasonAverages < ActiveRecord::Migration[6.1]
  def change
    create_table :season_averages do |t|
      t.integer :games_played
      t.integer :player_id
      t.integer :season
      t.integer :min
      t.integer :fgm
      t.integer :fga
      t.integer :fg3m
      t.integer :fg3a
      t.integer :ftm
      t.integer :fta
      t.integer :oreb
      t.integer :dreb
      t.integer :reb
      t.integer :ast
      t.integer :stl
      t.integer :blk
      t.integer :turnover
      t.integer :pf
      t.integer :pts
      t.integer :fg_pct
      t.integer :fg3_pct
      t.integer :ft_pct
      t.integer :stats_id

      t.timestamps
    end
  end
end
