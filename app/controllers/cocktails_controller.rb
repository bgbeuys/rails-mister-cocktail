class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktails = Cocktail.find(params[:id])
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
    @cocktails = Cocktail.new(cocktail_params)
    if @cocktail.save
      recirect_to cocktail_path(@cocktail)
    else
      render :new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
