class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|

    	t.string :name
    	t.string :type
    	t.text :description
    	t.date :year_opened
    	t.date :year_closed
    	t.string :head_brewer
    	t.string :founder
    	t.text :core_range
    	t.boolean :seasonals
    	t.boolean :changing
    	t.integer :rating
    	t.text :where_to_buy

    	t.string :website
    	t.string :twitter
    	t.string :facebook
    	t.string :instagram
    	t.string :untappd
    	t.string :ratebeer

    	t.boolean :drink_at_brewery
    	t.time :monday_open
    	t.time :monday_close
    	t.time :tuesday_open
    	t.time :tuesday_close
    	t.time :wednesday_open
    	t.time :wednesday_close
    	t.time :thursday_open
    	t.time :thursday_close
    	t.time :friday_open
    	t.time :friday_close
    	t.time :saturday_open
    	t.time :saturday_close
    	t.time :sunday_open
    	t.time :sunday_close
    	t.text :drink_at_brewery_description

      t.timestamps
    end
  end
end
