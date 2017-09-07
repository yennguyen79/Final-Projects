class ApplicationController < ActionController::Base
  
  helper_method :get_cart
  protect_from_forgery with: :exception


  def get_cart
    return @cart if @cart 
    Rails.logger.info "Loading from DB"
    if session[:cart_id]
      @cart = Cart.find session[:cart_id]
    else 
      set_cart
    end 
  end
  
  def set_cart
    @cart = Cart.create
    session[:cart_id] = @cart.id 
    @cart
  end 
end
