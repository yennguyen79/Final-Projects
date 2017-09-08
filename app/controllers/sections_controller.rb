class SectionsController < ApplicationController

  def index
    unless params[:section]
      redirect_to sections_path(section: Section.first.name)
      return 
    end 

    @sections = Section.all
    section = Section.find_by(name: params[:section])
    @food_items = section.food_items
    get_cart
  end
end
