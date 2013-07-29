class DaysController < ApplicationController
	def index
		today = Day.find_by_date(Date.today)
		@date_range = date_range(today)
	end

	private
		def date_range(days=7, today)
			future_dates = []
			past_dates = []

			(1..days).to_a.each do |day|
				future_dates.push Day.find_by_date(today.date.advance days:  day)
				past_dates.unshift Day.find_by_date(today.date.advance days: -day)
			end

			[past_dates, today, future_dates].flatten.reverse
		end
end
