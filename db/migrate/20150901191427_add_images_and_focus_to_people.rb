class AddImagesAndFocusToPeople < ActiveRecord::Migration
  def change
  	add_attachment :people, :thumbnail
  	add_attachment :people, :banner
  	add_column :people, :focus1, :string
  	add_column :people, :focus2, :string
  	add_column :people, :focus3, :string
  end
end
