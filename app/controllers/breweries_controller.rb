class BreweriesController < ApplicationController


  def index
    if params[:search].present?
      @breweries = Brewery.near(params[:search], 10)
    else
      @breweries = Brewery.all
    end
  end

  def show
  	@brewery = Brewery.find(params[:id])
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

  def edit
    @brewery = Brewery.find(params[:id])
  end

  def update
    @brewery = Brewery.find(params[:id])
    if @brewery.update(brewery_params)
      flash[:success] = "Changes saved"
      redirect_to root_path
    else
      flash[:error] = "Nope"
      render :new
    end
  end

  def destroy
    @brewery = Brewery.find(params[:id])
    @brewery.delete
    flash[:success] = "Deleted"
    redirect_to root_path
  end


  private


  def brewery_params
  	params.require(:brewery).permit(
  		:name, 
  		:brewery_type,
  		:website,
  		:twitter,
  		:facebook,
  		:instagram,
  		:untappd,
  		:ratebeer,
  		:drink_at_brewery,
  		:address_one,
      :address_two,
      :city,
      :county,
      :post_code,
  		:latitude,
  		:longitude,
      :approved,
      :tours,
      :image
  	)
  end


end
