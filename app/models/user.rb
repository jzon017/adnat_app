class User < ApplicationRecord
	has_secure_password
	belongs_to :orgs
	validates :email, presence: true, uniqueness: true
end
