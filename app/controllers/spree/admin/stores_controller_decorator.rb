module Spree
  module Admin
    StoresController.class_eval do

      before_action :include_vendor_ids, only: [:create, :update]

      def include_vendor_ids
        permitted_store_attributes.push(vendor_ids: []) unless permitted_store_attributes.include?({:vendor_ids => []})
      end

    end
  end
end

