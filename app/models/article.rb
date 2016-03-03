class Article < ActiveRecord::Base
	def self.search(search)
		if search
			where('title LIKE ?', "%#{search}%").order(created_at: :desc)
		else
			order(created_at: :desc)
		end
	end
end
