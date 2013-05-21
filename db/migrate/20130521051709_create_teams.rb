class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string :city
    	t.string :conference, limit: 3
    	t.string :division, limit: 5
    	t.string :name
    	t.string :abbr, limit: 3

      t.timestamps
    end
  end
end
