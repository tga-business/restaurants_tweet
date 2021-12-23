class CreateDailies < ActiveRecord::Migration[6.0]
  def change
    create_table :dailies do |t|
      t.string :tweet,           null: false
      t.references :user,        foreign_key: true
      t.references :restaurants, foreign_key: true
      t.timestamps
    end
  end
end
