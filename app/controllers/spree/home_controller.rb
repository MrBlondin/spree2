module Spree
  class HomeController < Spree::StoreController
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    helper 'spree/products'

    respond_to :html

    #Вытаскиваем только подарочные коробки
    def index
      @taxon = Taxon.find_by_permalink!("categories/gift-boxes")
      return unless @taxon

      @searcher = Spree::Config.searcher_class.new(params.merge(:taxon => @taxon.id))
      @searcher.current_user = try_spree_current_user
      @searcher.current_currency = current_currency
      @products = @searcher.retrieve_products

      respond_with(@taxon)
    end
  end
end
