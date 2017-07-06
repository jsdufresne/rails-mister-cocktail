class DosesController < ApplicationController
  def show
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
      if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end
  end

  def edit
  end

  def update
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    respond_to do |format|
      format.html { redirect_to cocktails_path, notice: 'Dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def dose_params
     params.require(:dose).permit(:description, :ingredient_id)
    end

end
