class AddFeaturedBoolean < ActiveRecord::Migration
  def change
  	add_column :breweries, :listed, :boolean
  end
end
