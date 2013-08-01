module DaysHelper
	def format_date(date)
		"#{date.strftime("%A %d")}".upcase
	end
end
