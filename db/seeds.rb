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
CSV.foreach( basedir + 'mtb_publisher.csv', :headers => :first_row) do |row|
  MtbPublisher.create(
                      :name => row['name']
                      )
end

# mtb_card_type
CSV.foreach(
            basedir + 'mtb_card_type.csv',
            :headers => :first_row,
            :encoding => 'UTF-8'
) do |row|
  MtbCardType.create(
                     :name => row['分類'])

end
