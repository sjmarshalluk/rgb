class AddAddressAndLatLongForGeocoder < ActiveRecord::Migration
  def change
  	add_column :breweries, :address, :string
  	add_column :breweries, :latitude, :float
  	add_column :breweries, :longitude, :float
  end
end
