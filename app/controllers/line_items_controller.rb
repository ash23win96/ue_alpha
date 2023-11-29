class LineItemsController < ApplicationController
  def create
	  @product = Product.find_by(id: params[:product_id])

    if @product.nil?
      redirect_to root_path, notice: "Product not found!"
        return
    end

	  @cart = current_cart
	  @line_item = @cart.line_items.find_or_initialize_by(product: @product)
    @line_item.quantity ||= 0
    @line_item.quantity += 1

	  if @line_item.save
	    redirect_to @cart, notice: "Product Added to Cart!"
 	  else
	    redirect_to root_path, notice: "Unable to add product to cart!"
	  end
	end

  def destroy
    @cart = current_cart
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to @cart, notice: 'Item was successfully removed from the cart.'
  end
end
