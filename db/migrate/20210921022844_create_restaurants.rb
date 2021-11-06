class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name,               null: false
      t.string :near_station,       null: false
      t.integer :opening_id,  null: false
      t.integer :clossing_id, null: false
      t.string :holiday,            null: false
      t.string :smoking,            null: false
      t.string :appeal,             null: false
      t.references :user,           null: false


      t.timestamps
    end
  end
end
