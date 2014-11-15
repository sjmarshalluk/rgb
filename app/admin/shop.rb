ActiveAdmin.register Shop do



  controller do
    def permitted_params
      params.permit brewery: [
      :name, 
      :website
    ]
    end
  end

end
