class RemoveAddressField < ActiveRecord::Migration
  def up
    remove_column :breweries, :address
  end
end
