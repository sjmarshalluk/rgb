ActiveAdmin.register Brewery do


  controller do
    def permitted_params
      params.permit brewery: [
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
      :drink_at_brewery_description,
      :address,
      :latitude,
      :longitude
    ]
    end
  end

end
