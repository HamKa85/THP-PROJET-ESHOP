class CartsController < ApplicationController
  def addtocart
    if user_signed_in?
      @item=Item.find(params[:id])
      if current_user.cart
        current_user.cart.items<<@item
        redirect_to showcart_path
      else
      @cart=Cart.new
      @cart.user=current_user
      @cart.items<<@item
      @cart.save
      redirect_to showcart_path
      end
    else
      redirect_to new_user_session_path
    end
  end

  def show
     @cart=current_user.cart.items
  end
end
