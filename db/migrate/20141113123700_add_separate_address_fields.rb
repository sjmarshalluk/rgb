class AddSeparateAddressFields < ActiveRecord::Migration
  def change
  	add_column :breweries, :address_one, :string
  	add_column :breweries, :address_two, :string
  	add_column :breweries, :city, :string
  	add_column :breweries, :county, :string
  	add_column :breweries, :country, :string
  end
end
