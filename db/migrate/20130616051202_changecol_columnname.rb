class ChangecolColumnname < ActiveRecord::Migration
  def up
    rename_column :mtb_cards, :vitory_token, :victory_token
  end

  def down
    rename_column :mtb_cards, :victory_token, :vitory_token
  end
end
