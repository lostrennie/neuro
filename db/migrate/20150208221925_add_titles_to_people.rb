class AddTitlesToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :title, :string
  	add_column :people, :prefix, :string
  end
end
