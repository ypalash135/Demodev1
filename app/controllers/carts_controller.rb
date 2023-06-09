class CartsController < ApplicationController
  def index
    @carts=current_user.carts.first.cart_items
  end
  def addproduct
    @cartitems= current_user.carts.first.cart_items.new(product_id:params[:id])
    @cartitems.save
    render action: :index
  end
end
