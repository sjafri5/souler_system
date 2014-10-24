class Contact < ActiveRecord::Base

	def full_name
		[first_name, last_name].join(' ')
	end
	# belongs_to :admin
end
