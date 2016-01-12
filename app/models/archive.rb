class Archive < ActiveRecord::Base
	belongs_to :person
	belongs_to :article
end
