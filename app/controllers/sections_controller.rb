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

 
  
  def set_cart
    cart = Cart.create
    session[:cart_id] = @cart.id
  
  end

  def get_cart 
    if session[:cart_id]
      @cart = Cart.find session[:cart_id]
    else 
      set_cart
    end
    end
  
end  
