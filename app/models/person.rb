class Person < ActiveRecord::Base
	has_many :pubs
	default_scope { order('lname') }
	has_many :archives
	has_many :articles, :through => :archives

    validates_presence_of :user_name, :position # Needed for friendly URLs
end
