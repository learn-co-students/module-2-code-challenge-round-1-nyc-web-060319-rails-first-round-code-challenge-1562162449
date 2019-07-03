


#HEROINE ATTRIUTES
# validates :name, presence: true
# validates :super_name, presence: true
# validates :power_id, presence: true

class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
end
