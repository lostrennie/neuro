class ChangeDateToInteger < ActiveRecord::Migration
  def change
  	change_column :pubs, :date, :integer
  end
end
