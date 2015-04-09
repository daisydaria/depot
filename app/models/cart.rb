class Cart < ActiveRecord::Base
  has_many :line_items, -> {includes(:product).order(:created_at)}, dependent: :destroy




  def add_item(p)
    line_item=line_items.where(product_id:p.id).first
    unless line_item
      line_item=self.line_items.build(product: p,quanitem:0,price:p.price)
    end
    line_item.quanitem+=1;
    line_item.save
  end
  def del_item(p)
    line_item=line_items.where(product_id:p.id).first
    if (line_item.quanitem <= 1)
      line_item.destroy
    else
    line_item.quanitem-=1;
    end
    line_item.save
  end
end
