class SectionsController < ApplicationController
def 
  unless params[:section]
      redirect_to sections_path(section: Sections.first.name)
      return 
    end 

    @sections = Section.all
    section = Section.find_by(name: params[:section])
    @food_items = section.food_items
 
  end

  def show
    @sections = Section.all
    @section = Section.find(params[:id])
    @food_items = @section.food_items
  end 
end
