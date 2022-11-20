class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.integer :ast
      t.integer :blk
      t.integer :dreb
      t.integer :fg3_pct
      t.integer :fg3a
      t.integer :fg3m
      t.integer :fg_pct
      t.integer :fga
      t.integer :fgm
      t.integer :ft_pct
      t.integer :fta
      t.integer :ftm
      t.belongs_to :player, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
