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
      :drink_at_brewery_description,
      :address,
      :latitude,
      :longitude
    ]
    end
  end

end
