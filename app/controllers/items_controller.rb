class ItemsController < ApplicationController

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new items_params
  	@item.user_id = session[:user_id]
  		if @item.save
			redirect_to controller: 'items', action: 'index'
		else 
			render 'home'
		end
  end

  def index
  	@items = Item.where(user_id: session[:user_id])
  end

  def edit
  end

  def items_params
		params.require(:item).permit(:name, :description, :starting_price, :expiration_date)
	end
end
