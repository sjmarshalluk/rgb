class ChangeCountryColName < ActiveRecord::Migration
  def up
    remove_column :breweries, :country
  end

  def down
    add_column :breweries, :post_code, :string
  end
end
