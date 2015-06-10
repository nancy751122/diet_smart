class DietsController < ApplicationController

  def index
    @diets = Diet.all
  end

  def show
    @diet = Diet.find(params[:id])
  end

  def new
    @diet = Diet.new
  end

  def create
    @diet = Diet.new
    @diet.name = params[:name]

    if @diet.save
      redirect_to "/diets", :notice => "Diet created successfully."
    else
      render 'new'
    end
  end

  def edit
    @diet = Diet.find(params[:id])
  end

  def update
    @diet = Diet.find(params[:id])

    @diet.name = params[:name]

    if @diet.save
      redirect_to "/diets", :notice => "Diet updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @diet = Diet.find(params[:id])

    @diet.destroy

    redirect_to "/diets", :notice => "Diet deleted."
  end
end
