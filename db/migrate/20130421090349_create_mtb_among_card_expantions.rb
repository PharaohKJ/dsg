class CreateMtbAmongCardExpantions < ActiveRecord::Migration
  def change
    create_table :mtb_among_card_expantions do |t|
      t.integer :mtb_card_id
      t.integer :mtb_expantion_id
      t.string :override_name
      t.text :override_text

      t.timestamps
    end
  end
end
