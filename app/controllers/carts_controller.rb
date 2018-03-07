class CartsController < ApplicationController
  before_action :require_login

  def addtocart
      if current_user.cart
         current_user.cart.items << Item.find(params[:id])
         redirect_to showcart_path
      else
      cart=Cart.new
      cart.user=current_user
      cart.items<<@item
      cart.save
      redirect_to showcart_path
      end
  end

  def show
     @cart=current_user.cart.items
  end

  def destroy
    current_user.cart.items.clear
    redirect_to showcart_path
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "Vous devez vous connecter pour accéder à votre panier"
      redirect_to new_user_session_path
    end
  end

end
