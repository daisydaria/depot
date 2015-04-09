class LineItem < ActiveRecord::Base
  validates :product, presence: true
  validates :product_id, uniqueness: {scope: :cart_id}
  validates :cart, presence: true
  validates :quanitem,presence: true,numericality: {only_integer: true,order_than:0}
  validates :price, presence: true
  belongs_to :cart
  belongs_to :product

  def total_price
    quanitem*price
  end
end
