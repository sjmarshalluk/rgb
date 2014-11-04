class BreweriesController < ApplicationController
  def index
  	@breweries = Brewery.all
  end

  def show
  end

  def new
  	@brewery = Brewery.new
  end

  def create
  	@brewery = Brewery.new(brewery_params)
  	if @brewery.save
  		flash[:success] = "Brewery saved"
  		redirect_to root_path
  	else
  		flash[:error] = "That didnt work"
  		render :new
  	end
  end



  private
  def brewery_params
  	params.require(:brewery).permit(
  		:name, 
  		:brewery_type, 
  		:description, 
  		:year_opened,
  		:year_closed,
  		:head_brewer,
  		:founder,
  		:core_range,
  		:seasonals,
  		:changing,
  		:where_to_buy,
  		:website,
  		:twitter,
  		:facebook,
  		:instagram,
  		:untappd,
  		:ratebeer,
  		:drink_at_brewery,
  		:monday_open,
  		:monday_close,
  		:tuesday_open,
  		:tuesday_close,
  		:wednesday_open,
  		:wednesday_close,
  		:wednesday_open,
  		:thursday_close,
  		:friday_open,
  		:friday_close,
  		:saturday_open,
  		:saturday_close,
  		:sunday_open,
  		:sunday_close,
  		:drink_at_brewery_description
  	)
  end


end
