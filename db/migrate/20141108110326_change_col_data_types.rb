class ChangeColDataTypes < ActiveRecord::Migration
  def up
    change_column :breweries, :where_to_buy, :string
    change_column :breweries, :year_opened, :string
  end

  def down
    change_column :breweries, :where_to_buy, :text
    change_column :breweries, :year_opened, :date
  end
end
