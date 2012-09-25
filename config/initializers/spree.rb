# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  config.site_name = "Tu Tienda Online de Neumaticos de Coche y Furgoneta"
  config.site_url = "www.neumaticosdecoche.com"
  config.allow_ssl_in_production = false
  config.default_country_id = 188
  config.default_locale = "es"
  config.logo = "logo-rodaben.jpg"
  config.prices_inc_tax = true
  config.show_zero_stock_products = false
  config.max_level_in_taxons_menu = 2
  config.currency = "EUR"
  config.display_currency = false
  config.default_meta_description = "Tienda Online de Neumaticos de coche y Furgoneta"
  config.default_meta_keywords = "Neumaticos, ruedas, coche, furgoneta, caravana, camion, agricolas, moto, ofertas, baratos, todas, marcas, todo, tiempo"
end

Spree.user_class = "Spree::User"
