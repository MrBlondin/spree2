# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree::Config.set(:logo => "Neuhaus_logo.png")
Spree::Config.set(:address_requires_state => false)
Spree::Config.set(:checkout_zone => "Finland")
Spree::Config.set(:show_variant_full_price => true)
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.site_name = "Tilaa suklaata neuhaus.fi"
  config.site_url = "neuhaus.fi"
  config.allow_ssl_in_production = true
  config.attachment_path = ":rails_root/public/products/:id/:style/:basename.:extension"
  config.max_level_in_taxons_menu = 2
  config.products_per_page = 80

  config.override_actionmailer_config = true
end

Spree.user_class = "Spree::User"

Spree::PrintInvoice::Config.set(:print_invoice_logo_path => "Neuhaus_logo.png")

MAKSUTURVA_SELLERID = "TSNRIGSB"
MAKSUTURVA_AUTHCODE = "P24aKmeWLkcxxY34mYQEXkDvwZn7BLHFabPctLiC"