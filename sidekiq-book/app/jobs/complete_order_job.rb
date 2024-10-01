class CompleteOrderJob
  include Sidekiq::Worker

  def perform(order_id)
    order = Order.find(order_id)
    OrderCreator.new.complete_order(order)
  end
end
