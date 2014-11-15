class AddUserEmailApprovedToShops < ActiveRecord::Migration
  def change
  	add_column :shops, :user_email, :string
  	add_column :shops, :approved, :boolean
  end
end
