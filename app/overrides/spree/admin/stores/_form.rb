Deface::Override.new(
  virtual_path: 'spree/admin/stores/_form',
  name: 'add_vendor_select_in_stores_form',
  insert_bottom: '[data-hook="admin_store_form_fields"]',
  partial: "spree/admin/stores/vendor_select"
)
