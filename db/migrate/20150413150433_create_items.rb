class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :starting_price
      t.date :expiration_date

      t.timestamps null: false
    end
  end
end
