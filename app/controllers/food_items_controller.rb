class FoodItemsController < ApplicationController

  def index
    @food_items = FoodItem.all
  end

  def show
    @food_item = FoodItem.find(params[:id])
    @food_item.add_view
  end

  def new
    @food_item = FoodItem.new
  end

  def edit
    @food_item = FoodItem.find(params[:id])
  end

  def update
    @food_item = FoodItem.find(params[:id])

    if @food_item.update(food_item_params)
      redirect_to @food_item
    else
      render 'edit'
    end

  end

  def destroy
    @food_item = FoodItem.find(params[:id])
    @food_item.destroy
    flash[:danger] = I18n.t('delete_food_item');
    redirect_to food_items_path
  end

  def create
    @food_item = FoodItem.new(food_item_params)

    if @food_item.save
      flash[:success] = I18n.t('success_food_item');
      redirect_to @food_item
    else
      render 'new'
    end
  end


  private
  def food_item_params
    params.require(:food_item).permit(:name, :description, :price, :section, :image_url)
  end

end
