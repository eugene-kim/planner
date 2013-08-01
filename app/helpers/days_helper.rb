module DaysHelper
	def format_date(date)
		"#{date.strftime("%A %d")}".upcase
	end

	def time_tense(date)
		if date > Date.today
			"future"
		elsif date < Date.today
			"past"
		else
			"present"
		end
	end
end
