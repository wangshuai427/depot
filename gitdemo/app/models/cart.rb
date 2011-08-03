class Cart < ActiveRecord::Base
<<<<<<< HEAD
  has_many :line_items, :dependent => :destroy
  def add_product(product_id)
    current_item = line_items.where(:product_id => product_id).first
=======
  has_many :line_item, :dependent => :destroy
  def add_product(product_id)
    current_item = line_item.where(:product_id => product_id).first
>>>>>>> 21a00ddb9f02a3dcdc0f86576a9efd05fae74b0d
    if current_item
       current_item.quantity += 1
     else
       current_item = LineItem.new(:product_id=>product_id)
<<<<<<< HEAD
       line_items<< current_item
=======
       line_item << current_item
>>>>>>> 21a00ddb9f02a3dcdc0f86576a9efd05fae74b0d
       
    end
    current_item
  end
  
  def total_price
<<<<<<< HEAD
    line_items.to_a.sum{|item| item.total_price}
=======
    line_item.to_a.sum{|item| item.total_price}
>>>>>>> 21a00ddb9f02a3dcdc0f86576a9efd05fae74b0d
  end
end
