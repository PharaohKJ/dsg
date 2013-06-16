class AddJnameToExpantion < ActiveRecord::Migration
  def change
    add_column :mtb_expantions, :jname, :string
  end
end
