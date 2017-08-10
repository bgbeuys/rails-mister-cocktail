class IngredientsController < ApplicationController
  def index
    @ingredients = ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredients = Ingredient.new
  end

  def create
    @ingredients = Ingredient.new(ingredient_params)
    if @Ingredient.save
      recirect_to ingredient_path(@ingredient)
    else
      render :new
  end

  private

  def ingredient_params
    params.require(:Ingredient).permit(:name)
  end
end
end
