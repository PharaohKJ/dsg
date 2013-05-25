# mtb_publisher
require "csv"

CSV.foreach('master_data/mtb_publisher.csv', :headers => :first_row) do |row|
  p row
  row.each do |v|
    # p v
  end
end
