# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

basedir = 'db/master_data/'

# mtb_publisher
loop = 0
CSV.foreach( basedir + 'mtb_publisher.csv', :headers => :first_row) do |row|
  MtbPublisher.create do |r|
    r.id = row['id'] == nil ? loop : row['id']
    r.name = row['name']
  end
  loop+=1
end

loop = 0
CSV.foreach(
            basedir + 'mtb_expantion.csv', 
            :headers => :first_row, 
            :encoding=> 'UTF-8'
) do |row|

  MtbExpantion.create do |r|
    r.id = row['id'] == nil ? loop : row['id']
    r.name = row['name']
    r.jname = row['jname']
    # r.mtb_publisher_id = row['publisher_id']
    r.released_at = row['released_at']
  end
  p row
  loop+=1
end


# mtb_card_type
loop = 0 
CSV.foreach(
            basedir + 'mtb_card_type.csv',
            :headers => :first_row,
            :encoding => 'UTF-8'
) do |row|
  
  MtbCardType.create do |r|
    r.id = row['id'] == nil ? loop : row['id']
    r.name = row['分類']
  end
  loop+=1
end
