ActiveAdmin.register Shop do



  controller do
    def permitted_params
      params.permit shop: [
      :name, 
      :website,
      :user_email,
      :approved
    ]
    end
  end

end
