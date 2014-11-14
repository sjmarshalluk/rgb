class AddPostcodeCol < ActiveRecord::Migration
  def change
  	add_column :breweries, :post_code, :string
  end
end
