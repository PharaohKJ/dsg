class MtbCard < ActiveRecord::Base
  attr_accessible :action, :buy, :card, :coin, :cost, :jname, :name, :need_pot, :text, :victory, :virtual_coin, :vitory_token
end
