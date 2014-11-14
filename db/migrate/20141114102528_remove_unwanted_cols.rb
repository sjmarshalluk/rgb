class RemoveUnwantedCols < ActiveRecord::Migration
   def up
    remove_column :breweries, :description
    remove_column :breweries, :year_opened
    remove_column :breweries, :head_brewer
    remove_column :breweries, :founder
    remove_column :breweries, :seasonals
    remove_column :breweries, :changing
    remove_column :breweries, :rating
    remove_column :breweries, :where_to_buy
    remove_column :breweries, :drink_at_brewery_description
    remove_column :breweries, :core_beer_one
    remove_column :breweries, :core_beer_two
    remove_column :breweries, :core_beer_three
    remove_column :breweries, :core_beer_four
    remove_column :breweries, :core_beer_five
    remove_column :breweries, :core_beer_six
    remove_column :breweries, :core_beer_seven
    remove_column :breweries, :core_beer_eight
    remove_column :breweries, :core_beer_nine
    remove_column :breweries, :core_beer_ten
    remove_column :breweries, :telephone
  end
end
