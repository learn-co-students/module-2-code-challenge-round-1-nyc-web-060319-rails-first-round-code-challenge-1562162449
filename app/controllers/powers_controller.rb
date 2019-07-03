class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
    # something is messed up w my power seed data that it is only showing up as the super strength

  end
end
