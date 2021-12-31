class UserEntry < ApplicationRecord
	def day
		self.created_at.strftime("%Y-%m-%d")
	end
end
