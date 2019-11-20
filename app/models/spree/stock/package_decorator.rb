Spree::Stock::Package.class_eval do
  def shipping_methods
    if (vendor = stock_location.vendor)
      #vendor.available_shipping_methods.to_a
      shipping_categories.map(&:shipping_methods).reduce(:&).to_a & vendor.shipping_methods.to_a
    else
      shipping_categories.map(&:shipping_methods).reduce(:&).to_a
    end
  end
end
