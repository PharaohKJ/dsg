class CreateMtbCardTypes < ActiveRecord::Migration
  def change
    create_table :mtb_card_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
