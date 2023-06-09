class CartsController < ApplicationController
  def index
    @carts=current_user.carts.first.cart_items
  end
  def addproduct
    @cartitems= current_user.carts.first.cart_items.new(product_id:params[:id])
    @cartitems.save
    redirect_to carts_path, notice: 'Item added to cart successfully.'
  end
  def removeproduct
    @cartitemscurrent= current_user.carts.first.cart_items[:id]
    @cartitemscurrent.destroy
  end
end
