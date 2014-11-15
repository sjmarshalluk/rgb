ActiveAdmin.register Shop do



  controller do
    def permitted_params
      params.permit shop: [
      :name, 
      :website
    ]
    end
  end

end
