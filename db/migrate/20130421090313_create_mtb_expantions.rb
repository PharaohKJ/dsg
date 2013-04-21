class CreateMtbExpantions < ActiveRecord::Migration
  def change
    create_table :mtb_expantions do |t|
      t.string :name
      t.date :released_at
      t.integer :mtb_publisher_id

      t.timestamps
    end
  end
end
