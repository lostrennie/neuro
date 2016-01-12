class Pub < ActiveRecord::Base
  belongs_to :person
  default_scope { order('date') }
end
