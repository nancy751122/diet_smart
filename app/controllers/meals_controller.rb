class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new
    @meal.name = params[:name]
    @meal.recipe_id = params[:recipe_id]
    @meal.day = params[:day]
    @meal.category = params[:category]
    @meal.diet_id = params[:diet_id]

    if @meal.save
      redirect_to "/meals", :notice => "Meal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])

    @meal.name = params[:name]
    @meal.recipe_id = params[:recipe_id]
    @meal.day = params[:day]
    @meal.category = params[:category]
    @meal.diet_id = params[:diet_id]

    if @meal.save
      redirect_to "/meals", :notice => "Meal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @meal = Meal.find(params[:id])

    @meal.destroy

    redirect_to "/meals", :notice => "Meal deleted."
  end
end
