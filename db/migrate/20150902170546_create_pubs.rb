class CreatePubs < ActiveRecord::Migration
  def change
    create_table :pubs do |t|
      t.references :person, index: true
      t.string :pubmed_id
      t.string :journal
      t.string :title
      t.string :auth_id
      t.text :authors
      t.string :pages
      t.string :date
      t.string :type
      t.string :link
      t.string :notes

      t.timestamps
    end
  end
end
