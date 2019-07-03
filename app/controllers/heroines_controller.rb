# 2. On the heroines index page, a heroine's super name should link to that heroine's show page. YES

# 3. The heroine show page should include the heroine's name (eg. Kamala Khan), her super name (eg. 
#Ms. Marvel), and her power. The power should link to the power show page.  YES

# 4. The power show page should have its name and description. YES

# 5. As a visitor to the website, I should be able to create a new heroine with her name and super name. YES

# 6. The form should also allow each heroine to be created with **only one of the existing powers**. YES

#   ![A form for adding a new heroine](new_heroine_form.gif)

# 7. Make sure no two heroines have the same super name. YES


#HEROINE ATTRIUTES
# validates :name, presence: true
# validates :super_name, presence: true
# validates :power_id, presence: true

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
      redirect_to heroine_path(@heroine)
    else
      @heroine.errors.full_messages
      render "new"
    end
  end
  
  # def edit
  #   @heroine = Heroine.find(params[:id])
  # end
  
  #Ignore this, didn't read README beforehand
  # def update
  #   @heroine = Heroine.find(params[:id])
  #   if @heroine.valid?
  #     @heroine.update(heroine_params)
  #     redirect_to heroine_path(@heroine)
  #   else
  #     @heroine.errors.full_messages
  #     render "new"
  #   end
  # end
  
  def show
    @heroine = Heroine.find(params[:id])
  end
  
  # def destroy
  #   heroine = Heroine.find(params[:id])
  #   heroine.destroy
  #   redirect_to heroines_path
  # end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
