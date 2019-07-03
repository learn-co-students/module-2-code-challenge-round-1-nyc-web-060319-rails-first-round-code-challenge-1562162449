class PowersController < ApplicationController
  def index
    @powers = Power.all
  end
  
  def new
    @power = Power.new
  end
  
  def create
    @power = Power.new(power_params)
    if @power.valid?
      @power.save
      redirect_to power_path(@power)
    else
      @power.errors.full_messages
      render "new"
    end
  end
  
  def edit
    @power = Power.find(paramss[:id])
  end
  
  def update
    @power = Power.find(params[:id])
    if @power.valid?
      @power.update(power_params)
      redirect_to power_path(@power)
    else
      @power.errors.full_messages
      render "new"
    end
  end
  
  def show
    @power = Power.find(params[:id])
  end
  
  def destroy
    power = Power.find(params[:id])
    power.destroy
    redirect_to powers_path
  end

  private
  def power_params
    params.require(:power).permit(:name, :description)
  end
end
