class ProductsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item=Item.find(params[:id])
  end

  def addtocart
    if user_signed_in?
      @item=Item.find(params[:id])
      if current_user.cart
        current_user.cart.items<<@item
        redirect_to cart_path
      else
      @cart=Cart.new
      @cart.user=current_user
      @cart.items<<@item
      @cart.save
      redirect_to cart_path
      end
    else
      redirect_to new_user_session_path
    end
  end

  def cart
     @cart=current_user.cart.items
  end
end
