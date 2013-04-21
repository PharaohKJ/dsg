class CreateMtbAmongCardTypes < ActiveRecord::Migration
  def change
    create_table :mtb_among_card_types do |t|
      t.integer :mtb_card_id
      t.integer :mtb_card_type_id

      t.timestamps
    end
  end
end
