class Item < ActiveRecord::Base
	has_one :user
	has_many :bids
	validates :user_id, presence: true 
end
