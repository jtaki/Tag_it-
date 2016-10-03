require_relative 'tagit/item_helper'
require_relative 'tagit/comparative_price'

class Item
  include Helper
  include Comparative

  attr_accessor :num, :line1, :line2, :weight, :suffix, :pack, :brand,
              :price, :cw, :rw, :child, :slot, :compare,
              :comp_unit, :comp_price, :upc, :vin, :sym

  def initialize(num,nam,wei,pac,pri,cw,rw)
    @num    = num.to_i
    @description = clean_names(nam)
    @weight = get_weight_num(wei)
    @suffix = get_weight_suffix(wei)
    @pack   = pac.to_i
    @price  = pri.to_f
    @cw     = rw == "Y" ? true : false
    @rw     = rw == "Y" ? true : false
    @comp_unit  = get_comparative_units(self)
    @comp_price = get_compared_price(self)
  end



private


 # unless it is a RW item, calculate comparative price

end
