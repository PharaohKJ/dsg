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


#mtb_card
loop=0
CSV.foreach(
            basedir + 'mtb_card.csv',
            :headers => :first_row,
            :encoding => 'UTF-8'
) do |row|

  MtbCard.create do |r|
    r.id = row['id'] == nil ? loop : row['id']
    r.name = row['name']
    r.jname = row['jname']
    r.cost = row['cost']
    r.need_pot = row['need_pot']
    r.special_cost = row['special_cost']
    r.coin = row['coin']
    r.victory = row['victory']
    r.card = row['card']
    r.action = row['action']
    r.buy = row['buy']
    r.virtual_coin = row['virtual_coin']
    r.victory_token = row['victory_token']
    #p r
  end
  loop+=1
end

#mtb_among_card_expantions
loop=0
CSV.foreach(
            basedir + 'mtb_among_card_expantion.csv',
            :headers => :first_row,
            :encoding => 'UTF-8'
) do |row|

  MtbAmongCardExpantion.create do |r|
    r.id = row['id'] == nil ? loop : row['id']
    r.mtb_card_id = row['mtb_card_id']
    r.mtb_expantion_id = row['mtb_expantion_id']
    #p row
    #p r
  end
  loop+=1
end

#mtb_among_card_types
loop=0
type_map = {
"呪い" => 1,
"基本" => 2,
"廃墟" => 3,
"持続" => 4,
"王国" => 5,
"褒賞" => 6,
"財宝" => 7,
"騎士" => 8,
"その他" => 9,
"勝利点" => 10,
"略奪者" => 11,
"避難所" => 12,
"アタック" => 13,
"アクション" => 14,
"リアクション" => 15,
"各騎士" => 16
}
CSV.foreach(
            basedir + 'mtb_among_card_type.csv',
            :headers => :first_row,
            :encoding => 'UTF-8'
) do |row|

  p row

  v = Array.new
  v.push( row['mtb_card_type_a']);
  v.concat( row['mtb_card_type_b'].split(':'));
  
  v.each do |t|
    MtbAmongCardType.create do |r|
      r.id = row['id'] == nil ? loop : row['id']
      r.mtb_card_id = row['mtb_card_id']
      r.mtb_card_type_id = type_map[t];
      #p row
      p t
      p type_map[t]
    end
    loop+=1
  end
end


