class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fname
      t.string :lname
      t.string :user_name
      t.string :auth_id
      t.string :school
      t.string :building
      t.string :office
      t.string :phone
      t.string :pi1
      t.string :pi2
      t.string :boss
      t.text :interest
      t.text :research

      t.timestamps
    end
  end
end
