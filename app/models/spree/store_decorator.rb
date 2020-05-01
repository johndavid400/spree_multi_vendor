module Spree
  Store.class_eval do
    has_and_belongs_to_many :vendors, join_table: 'spree_stores_vendors'
  end
end
