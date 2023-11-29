class ApplicationController < ActionController::Base
  private
  
	def current_cart
	  @current_cart ||= Cart.find(session[:cart_id]) if session[:cart_id]
	  @current_cart ||= Cart.create
	  session[:cart_id] = @current_cart.id
	  @current_cart
	end
end
