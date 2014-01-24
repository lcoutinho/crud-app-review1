class MealsController < ApplicationController

	def index
		@meals = Meal.all
	end

	def new
		@meals = Meal.new
	end

	def create
		meal = Meal.create(params[:meal])
		redirect_to meal_path(meal)
	end

	def edit
		@meal = Meal.find(params[:id])
	end

	def update
		meal = Meal.find(params[:id])
		meal.update_attributes(params[:meal])
		redirect_to meal_path(meal)
	end

	def show
		@meal = Meal.find(params[:id])
	end

	def destroy
		@meal = Meal.find(params[:id])
		@game.destroy
		redirect_to '/'
	end
end
