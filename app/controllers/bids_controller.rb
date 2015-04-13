class BidsController < ApplicationController
	def new
		@item = Item.find(params[:id])
		@bid = Bid.new
	end

	def create
		@bid = Bid.new bid_params
		@bid.user_id = session[:user_id]
		@bid.item_id = params[:id]
		if @bid.save
			redirect_to :action => 'index'
		else
			render 'new'
		end
	end

	def index
		@item = Item.find(params[:id])
		@bids = @item.bids
		
	
	end

	def bid_params
		params.require(:bid).permit(:bid_amount)
	end
end
