class Person < ActiveRecord::Base
	has_many :pubs
	default_scope { order('lname') }
	belongs_to :boss, class_name: 'Person'
	has_many :subordinates, class_name: 'Person', foreign_key: 'boss_id'


    validates_presence_of :user_name, :position # Needed for friendly URLs
end
