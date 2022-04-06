class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details, dependent: :destroy

  def total
    order_details.reduce(0) { |accum, current| accum + current.subtotal }
  end

  def items_count
    order_details.count
  end
end
