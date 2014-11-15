class ShopsController < ApplicationController


  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      flash[:success] = "Thanks for submitting a shop. We're working hard on this section, and hope to get it up soon. In the mean time, why not peruse these breweries..."
      redirect_to breweries_path
    else
      flash[:error] = "That didnt work"
      render :new
    end
  end

  private


  def shop_params
    params.require(:shop).permit(
      :name,
      :website
    )
  end


end
