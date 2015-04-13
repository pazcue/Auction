class User < ActiveRecord::Base
	validates :email, presence: true 
	has_many :items
	has_many :bids
end
