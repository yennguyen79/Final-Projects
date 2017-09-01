class FoodItemsController < ApplicationController
  before_action :set_items, only: [:show, :edit, :update, :destroy]

  def index
    @section = Section.find(params[:section_id].to_i) 
    @food_items = @section.food_items
  end
  
  def show
  end
  
  def new 
    @food_item = FoodItem.new
  end

  def edit 
  end 

  def create
    @food_item = FoodItem.new(food_item_params)

    respond_to do |format|
      if @food_item.save
        format.html { redirect_to @food_item, notice: 'Food item was successfully created.' }
        format.json { render :show, status: :created, location: @food_item }
      else
        format.html { render :new }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

def update
    respond_to do |format|
      if @food_item.update(food_item_params)
        format.html { redirect_to @food_item, notice: 'Food item was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_item }
      else
        format.html { render :edit }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @food_item.destroy
    redirect_back fallback_location: root_path
  end

  
 private
 
 def set_items
      # @section = Section.find(params[:section_id].to_i)
      @food_item = FoodItem.find(params[:id].to_i)
    end
  def food_item_params
      params.require(:food_item).permit(:name, :price, :description, :section_id)
    end
end
