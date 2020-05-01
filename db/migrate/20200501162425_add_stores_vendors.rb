class AddStoresVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_stores_vendors, id: false do |t|
      t.integer :store_id
      t.integer :vendor_id
      t.timestamps null: false
    end

    add_index :spree_stores_vendors, :store_id
    add_index :spree_stores_vendors, :vendor_id
  end
end
