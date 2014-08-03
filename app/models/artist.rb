class Artist < ActiveRecord::Base
	has_many :paintings
	has_many :museums, through: :paintings

	def to_s
		name
	end
end
