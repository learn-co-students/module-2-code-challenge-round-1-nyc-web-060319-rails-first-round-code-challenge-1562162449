#ONE POWER TO MANY HEROINES  ONE POWER CAN BE BESTOWED TO MANY HEROINES, HEROIENS GET FOREIGN KEY#
#It should've been Heroines#

class AddPowerIdToHeroine < ActiveRecord::Migration[5.1]
  def change
    add_column :heroines, :power_id, :integer
  end
end
