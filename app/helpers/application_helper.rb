module ApplicationHelper
	
	# If title isn't customised (eg. about/contact etc), display generic title
	def full_title (page_title = '')
		base_title = "VMS Secure Payments"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end		
	
end
