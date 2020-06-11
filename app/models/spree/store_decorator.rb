module Spree
  Store.class_eval do
    has_and_belongs_to_many :vendors, join_table: 'spree_stores_vendors'

    def products
      if default?
        vendors.any? ? vendors.products : Spree::Product.all
      else
        vendors.products
      end
    end

  end
end
