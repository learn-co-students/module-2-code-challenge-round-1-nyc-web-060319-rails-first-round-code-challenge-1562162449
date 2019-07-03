class HeroinesController < ApplicationController
  def index
   @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = Power.find(@heroine.power_id)
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params(:name, :super_name, :power_id))
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  private
  def heroine_params(*args)
    params.require(:heroine).permit(*args)
  end
end
