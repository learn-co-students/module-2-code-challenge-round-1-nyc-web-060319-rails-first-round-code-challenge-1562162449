class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
  end

  def create
  end

  private

  def heroine_params
    params.require(:heroines).permit(:name, :super_name, :power_id)
  end
end
