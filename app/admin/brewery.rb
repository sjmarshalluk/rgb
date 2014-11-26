ActiveAdmin.register Brewery do


  controller do
    def permitted_params
      params.permit brewery: [
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
      :image,
      :user_email,
      :listed
    ]
    end
  end

end
