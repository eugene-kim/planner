module DaysHelper
	def format_date(date)
		"#{date.strftime("%A %d")}".upcase
	end

	def future?(date)
		date > Date.today
	end

	def past?(date)
		date < Date.today
	end

	def present?(date)
		date == Date.today
	end
end
