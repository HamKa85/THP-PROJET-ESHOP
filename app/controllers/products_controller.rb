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
      @cart=Cart.create
      @cart.user=current_user
      @cart.items<<@item
      redirect_to root_path
    else
      redirect_to new_user_session_path
    end
  end

end
