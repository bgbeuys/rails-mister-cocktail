class DosesController < ApplicationController
  # def new
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @dose = Dose.new
  # end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      flash[:error] = @dose.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
