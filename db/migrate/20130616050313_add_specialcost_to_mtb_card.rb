class AddSpecialcostToMtbCard < ActiveRecord::Migration
  def change
    add_column :mtb_cards, :special_cost, :integer
  end
end
