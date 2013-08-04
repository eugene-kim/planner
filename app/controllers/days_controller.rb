class DaysController < ApplicationController

	def index
		today = Day.find_by_date(Date.today)
		@days = date_range(today)
	end

	def show
		@day = Day.find(params[:id])
	end

	def edit
		@day = Day.find(params[:id])
	end

	def update
		@day = Day.find(params[:id])
		if @day.update_attributes(params[:day])
			# @day.tasks = @day.tasks.split("\r\n").map { |x| "<p>#{x.strip}</p>" }.join
			# debugger
			respond_to do |format|
				format.html { redirect_to tasks_url }
				format.js
			end
		else
			render :index, notice: "more than 1 line"
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
