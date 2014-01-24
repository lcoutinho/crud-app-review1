class MealsController < ApplicationController

	def index
		@first_meal = Meal.first
	end
end
