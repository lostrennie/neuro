class ChangeBossToInt < ActiveRecord::Migration
  def change
  	rename_column :people, :boss, :boss_id
  	change_column :people, :boss_id, :integer
  	add_index :people, :boss_id
  end
end
