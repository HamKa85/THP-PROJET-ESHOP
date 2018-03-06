class OrdersController < ApplicationController

  def createorder
    @order=Order.new
    p @order
    @order.user=current_user
    p @order.user
    @order.items=current_user.cart.items
    @order.total_price=0

    @order.items.each do |value|
      @order.total_price+=value.price
    end
    p @order
    @order.save
    redirect_to orders_path
  end

  def index
    @orders=current_user.orders
  end

end
