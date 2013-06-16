class CreateMtbCards < ActiveRecord::Migration
  def change
    create_table :mtb_cards do |t|
      t.string :name
      t.string :jname
      t.text :text
      t.integer :cost
      t.integer :need_pot
      t.integer :coin
      t.integer :victory
      t.integer :card
      t.integer :action
      t.integer :buy
      t.integer :virtual_coin
      t.integer :victory_token

      t.timestamps
    end
  end
end
