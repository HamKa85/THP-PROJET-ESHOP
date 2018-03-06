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
    if user_signed_in?
     @cart=current_user.cart.items
    else
     redirect_to root_path
    end
  end
end
