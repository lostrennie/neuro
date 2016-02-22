class AddLabNameToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :lab_name, :string
  end
end
