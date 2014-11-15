class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|

    	t.string :name
    	t.string :website
    	t.text :description
    	t.attachment :image
      t.timestamps
    end
  end
end
