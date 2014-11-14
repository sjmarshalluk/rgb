ActiveAdmin.register Brewery do


  controller do
    def permitted_params
      params.permit brewery: [
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
      :address_one,
      :address_two,
      :city,
      :county,
      :post_code,
      :latitude,
      :longitude,
      :approved,
      :telephone,
      :tours,
      :image
    ]
    end
  end

end
