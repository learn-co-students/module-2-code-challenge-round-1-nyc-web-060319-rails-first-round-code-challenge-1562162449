class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    # I tried using strong params, it kept giving me error
    @heroine = Heroine.create(name: params[:heroine][:name], super_name: params[:heroine][:super_name], power_id: params[:heroine][:power_id])
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  private

  # params.require(:person).permit(:name, :age)
  def heroine_params
    parmas.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
