class RemoveUnwantedBreweriesCols < ActiveRecord::Migration
  
  def up
    remove_column :breweries, :monday_open
    remove_column :breweries, :monday_close
    remove_column :breweries, :tuesday_open
    remove_column :breweries, :tuesday_close
    remove_column :breweries, :wednesday_open
    remove_column :breweries, :wednesday_close
    remove_column :breweries, :thursday_open
    remove_column :breweries, :thursday_close
    remove_column :breweries, :friday_open
    remove_column :breweries, :friday_close
    remove_column :breweries, :saturday_open
    remove_column :breweries, :saturday_close
    remove_column :breweries, :sunday_open
    remove_column :breweries, :sunday_close
    remove_column :breweries, :year_closed
  end

end
