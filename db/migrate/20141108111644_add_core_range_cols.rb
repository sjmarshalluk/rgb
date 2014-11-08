class AddCoreRangeCols < ActiveRecord::Migration
  def change
    add_column :breweries, :core_beer_one, :string
    add_column :breweries, :core_beer_two, :string
    add_column :breweries, :core_beer_three, :string
    add_column :breweries, :core_beer_four, :string
    add_column :breweries, :core_beer_five, :string
    add_column :breweries, :core_beer_six, :string
    add_column :breweries, :core_beer_seven, :string
    add_column :breweries, :core_beer_eight, :string
    add_column :breweries, :core_beer_nine, :string
    add_column :breweries, :core_beer_ten, :string
  end
end
