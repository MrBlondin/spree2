class Spree::StaticContentController < Spree::StoreController

  helper "spree/products"
  layout :determine_layout

  def show
    path = case params[:path]
             when Array
               '/' + params[:path].join("/")
             when String
               '/' + params[:path]
             when nil
               request.path
           end

    locale = params[:locale] || session[:locale] || I18n.locale || Rails.application.config.i18n.default_locale


    unless @page = Spree::Page.visible.by_slug(path).first
      render_404
    end

    #If current lang finnish - we should put finnish
    if locale == "fi"
      @page.title = @page.title_fi
      @page.body = @page.body_fi
      @page.meta_keywords = @page.meta_keywords_fi
      @page.meta_description = @page.meta_description_fi
      @page.meta_title = @page.meta_title_fi
    end
  end

  private

  def determine_layout
    return @page.layout if @page and @page.layout.present? and not @page.render_layout_as_partial?
    Spree::Config.layout
  end

  def accurate_title
    @page ? (@page.meta_title.present? ? @page.meta_title : @page.title) : nil
  end

end
