class Org < ApplicationRecord
	validates :orgname, :rate, :presence => true
	has_many :users

end