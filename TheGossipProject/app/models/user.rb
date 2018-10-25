class User < ApplicationRecord

	has_many :gossips
	belongs_to :city
	has_many :private_messages
end