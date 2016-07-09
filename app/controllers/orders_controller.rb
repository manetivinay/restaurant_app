class OrdersController < ApplicationController
  def new
    @food_item = FoodItem.find(params[:food_item_id])
    @order = @food_item.orders.build
  end

  def index

  end

  def create

    @food_item = FoodItem.find(params[:food_item_id])

    @order = Order.create(order_params)
    @order.food_item_id = @food_item.id

    if @order.save
      flash[:success] = I18n.t('successfully_order');
      redirect_to menu_path
    else
      flash[:danger] = "Error: #{@order.errors.full_messages.to_sentence}";
      render 'new'
    end
  end

  private
  def order_params
    params.require(:order).permit(:name, :phone, :address, :food_item_id)
  end
end
