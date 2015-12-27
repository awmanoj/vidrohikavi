class Poem < ActiveRecord::Base
	validates :lyrics, presence: true, uniqueness: true
end
