class Shift < ApplicationRecord
	validates :user_id, :presence => true
	has_many :users
end
