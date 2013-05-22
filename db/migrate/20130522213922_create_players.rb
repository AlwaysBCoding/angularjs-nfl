class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.integer :team_id
    	t.integer :jersey_number
    	t.string :firstname
    	t.string :lastname
    	t.string :position
    	t.string :status
    	t.integer :height
    	t.integer :weight
    	t.integer :experience
    	t.string :college
    	t.date :birthdate
      t.timestamps
    end
  end
end
