Spree::Admin::ProductsController.class_eval do

  new_action.before :set_shipping_category

  private

  def set_shipping_category
    @product.shipping_category = Spree::ShippingCategory.first # or whichever category your heart desires
  end
end