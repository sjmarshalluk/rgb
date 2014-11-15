ActiveAdmin.register Club do


  controller do
    def permitted_params
      params.permit club: [
      :name, 
      :website,
      :image,
      :description,
      :user_email,
      :approved
    ]
    end
  end


end
