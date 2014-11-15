class AddEmailFieldAndApproved < ActiveRecord::Migration
  def change
  	add_column :breweries, :user_email, :string
  	add_column :clubs, :user_email, :string
  	add_column :clubs, :approved, :boolean
  end
end
