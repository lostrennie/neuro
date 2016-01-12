class Person < ActiveRecord::Base
	has_many :pubs
	default_scope { order('lname') }
	has_many :archives
	has_many :articles, :through => :archives

  def to_param
    user_name
  end
end
