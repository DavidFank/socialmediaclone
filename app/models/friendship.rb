class Friendship < ActiveRecord::Base
	include PublicActivity::Model
	tracked
	belongs_to :user
	belongs_to :friend, class_name: "User"

#accepts friends
	def accept_friendship
		self.update_attributes(state: "active", friended_at: Time.now)
	end

	def deny_friendship
		self.destroy 
	end 

	def cancel_friendship
		self.destroy
	end

end
