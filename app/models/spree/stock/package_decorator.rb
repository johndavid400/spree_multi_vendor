Spree::Stock::Package.class_eval do
  def shipping_methods
    all_shipping_methods = shipping_categories.map(&:shipping_methods).reduce(:&).to_a
    if (vendor = stock_location.vendor)
      available_vendor_shipping_methods = all_shipping_methods & vendor.shipping_methods.to_a
      if available_vendor_shipping_methods.any?
        available_vendor_shipping_methods
      else
        all_shipping_methods & vendor.available_shipping_methods.to_a
      end
    else
      all_shipping_methods
    end
  end
end
