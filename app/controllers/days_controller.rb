class DaysController < ApplicationController

	def index
		today = Day.find_by_date(Date.today)
		@date_range = date_range(today)
	end

	def show
		@daily_list = Day.find(params[:id])
	end

	def edit
		@daily_list = Day.find(params[:id])
	end

	def update
		@daily_list = Day.find(params[:id])
		if @daily_list.update_attributes(params[:day])
			redirect_to day_path(@daily_list)
		else
			redirect_to edit_day_path(@daily_list)
		end
	end

	private
		def date_range(days=7, today)
			future_dates = []
			past_dates = []

			(1..days).to_a.each do |day|
				future_dates.push Day.find_by_date(today.date.advance days:  day)
				past_dates.unshift Day.find_by_date(today.date.advance days: -day)
			end

			[future_dates.reverse, today, past_dates.reverse].flatten
		end
end
