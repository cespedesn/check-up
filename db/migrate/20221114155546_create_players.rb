class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :height_feet
      t.integer :height_inches
      t.integer :weight_pounds
      t.string :team
      t.integer :api_id
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
