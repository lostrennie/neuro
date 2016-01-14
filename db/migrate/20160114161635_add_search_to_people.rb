class AddSearchToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :search, :boolean
  end
end
