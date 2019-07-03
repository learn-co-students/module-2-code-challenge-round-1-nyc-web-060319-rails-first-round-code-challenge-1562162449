class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end



  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroines_path
    else
      @put= @heroine.errors.full_messages
      render :new
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = Heroine.find_by(params[:power_id])
  end


  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
