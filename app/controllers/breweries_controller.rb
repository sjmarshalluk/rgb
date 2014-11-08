class BreweriesController < ApplicationController

  helper_method :sort_column, :sort_direction

  def index
    if params[:search].present?
      @breweries = Brewery.near(params[:search], 10)
    else
      @breweries = Brewery.order(sort_column + " " + sort_direction)
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

  def sort_column
    Brewery.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end


  def brewery_params
  	params.require(:brewery).permit(
  		:name, 
  		:brewery_type, 
  		:description, 
  		:year_opened,
  		:head_brewer,
  		:founder,
  		:core_beer_one,
      :core_beer_two,
      :core_beer_three,
      :core_beer_four,
      :core_beer_five,
      :core_beer_six,
      :core_beer_seven,
      :core_beer_eight,
      :core_beer_nine,
      :core_beer_ten,
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
  		:drink_at_brewery_description,
  		:address,
  		:latitude,
  		:longitude,
      :approved,
      :telephone,
      :tours,
      :image
  	)
  end


end
