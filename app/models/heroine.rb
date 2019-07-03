# 1. Create the associations between models. You may have to alter the current schema to get your code working. 
# If you've set up your relationships properly, you should be able to run `rake db:seed` without errors, and confirm in console that the heroines and powers have been created with the proper relations.

# 2. On the heroines index page, a heroine's super name should link to that heroine's show page.

# 3. The heroine show page should include the heroine's name (eg. Kamala Khan), her super name (eg. Ms. Marvel), and her power. The power should link to the power show page.  

# 4. The power show page should have its name and description.

# 5. As a visitor to the website, I should be able to create a new heroine with her name and super name.

# 6. The form should also allow each heroine to be created with **only one of the existing powers**.

#   ![A form for adding a new heroine](new_heroine_form.gif)

# 7. Make sure no two heroines have the same super name.


# We have several different powers and each can be bestowed upon **more than one heroine**. Each heroine can only have **one power**.

#ONE POWER TO MANY HEROINES  ONE POWER CAN BE BESTOWED TO MANY HEROINES#
#EACH HEROINE IS TIED (BELONGS TO) ONLY ONE POWER# 
class Heroine < ApplicationRecord
    belongs_to :power

    
    validates :name, presence: true
    validates :super_name, presence: true
    validates :super_name, uniqueness: true
    validates :power_id, presence: true

    def get_power_name_by_power_id
        Power.all.find{|power| power.id == self.power_id}.name.capitalize
    end
end
