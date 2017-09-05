class ApplicationController < ActionController::Base
  before_action :get_cart
  helper_method :set_cart,:get_cart, :current_cart
  protect_from_forgery with: :exception

  def current_cart
    @current_cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound 
    @current_cart = Cart.create!
    session[:cart_id] = @current_cart.id
  end
end

  def set_cart
    @cart = Cart.create
    session[:cart_id] = @cart.id 
    @cart
  end 

  def get_cart
    if session[:cart_id]
      @cart = Cart.find session[:cart_id]
    else 
      set_cart
    end 
  end 
end
