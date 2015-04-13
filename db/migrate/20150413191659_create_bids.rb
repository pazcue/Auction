class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
    t.references :item, index: true, foreign_key: true
    t.references :user, index: true, foreign_key: true
    t.integer :bid_amount
      t.timestamps null: false
    end
  end
end
