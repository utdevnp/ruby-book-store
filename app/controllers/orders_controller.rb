class OrdersController < ApplicationController
  def index
    @order = Order.all
    render json: @order
  end

  def create

    order = Order.new
    order.name = params[:name]
    order.phone = params[:phone]
    order.total = params[:total]
    order.user_id = 1

    if order.save
      render json: order, status: :created, location: order
    else
      render json: order.errors, status: :unprocessable_entity
    end 

  end

  def show
    @user = User.all

    render json:@user
  end 

end
