class AddApprovedPhoneToursAndBarCols < ActiveRecord::Migration
  def change
  	add_column :breweries, :approved, :boolean
  	add_column :breweries, :telephone, :string
  	add_column :breweries, :tours, :boolean
  end
end
