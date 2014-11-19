class ClubsController < ApplicationController


	def index
		@clubs = Club.order('name ASC').published
	end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
    if @club.save
      flash[:success] = "Thanks"
      redirect_to clubs_path
    else
      flash[:error] = "That didnt work"
      render :new
    end
  end

  def edit
    @club = Club.find(params[:id])
  end

  def update
    @club = Club.find(params[:id])
    if @club.update(club_params)
      flash[:success] = "Changes saved"
      redirect_to root_path
    else
      flash[:error] = "Nope"
      render :new
    end
  end



  private


  def club_params
    params.require(:club).permit(
      :name,
      :website,
      :description,
      :image,
      :user_email,
      :approved
    )
  end

end
