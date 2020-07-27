class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.integer :location_id
      t.string :description
      t.integer :user_id
      t.integer :interest_id
      t.string :img_url 
      t.timestamps
    end
  end
end
