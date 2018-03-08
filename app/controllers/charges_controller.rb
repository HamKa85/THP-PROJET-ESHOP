class ChargesController < ApplicationController
  def new
    @order = Order.find(params[:id])
    @order.statut = true
    @order.save!
  end

  def create
    @amount = (Order.find(params[:id]).total_price*100).round(0)

    customer = Stripe::Customer.create(
    email: params[:stripeEmail],
    source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
    customer: customer.id,
    amount: @amount ,
    description: 'Rails Stripe customer',
    currency: 'usd'
    )

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
