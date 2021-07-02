class OrderDetailController < ApplicationController
  def index
    @orderdetail =  OrderDetail.all
    render json: @orderdetail
  end


  def create
    order_detail = OrderDetail.new

    order_detail.book_id = params[:book_id]
    order_detail.rate = params[:rate]
    order_detail.quantity = params[:quantity]
    order_detail.order_id= params[:order_id]
    order_detail.amount = params[:rate] * params[:quantity]
    
    if order_detail.save
      render json: order_detail, status: :created, location: order_detail
    else
      render json: order_detail.errors, status: :unprocessable_entity
    end 

  end

end
