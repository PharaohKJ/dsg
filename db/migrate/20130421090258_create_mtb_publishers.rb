class CreateMtbPublishers < ActiveRecord::Migration
  def change
    create_table :mtb_publishers do |t|
      t.string :name

      t.timestamps
    end
  end
end
