Deface::Override.new(:virtual_path => %q{spree/home/index},
                          :name => %q{replace_homepage_products},
                          :replace => %q{[data-hook='homepage_products']},
                          :closing_selector => %q{},
                          :text => %q{
            <div data-hook="homepage_products">
            <div id="banner" class="row" data-hook="products_banner">
              <%= render :partial => "spree/shared/banner", :locals => { :cycle_images => @cycle_images } %>
            </div>
            <div id="offerts" class="row" data-hook="products_in_offert">
              <div class="columns eight alpha">
    <div class="row">
      <h3 style="text-align:center;">Listado de Productos en Oferta</h3>
      <%= render :partial => 'spree/shared/products_offert', :locals => { :products => @products } %>
    </div>
  </div>
  <div class="columns four omega">
    <h3 style="text-align:center;">Noticias</h3>
    <div id="news" class="row">
      <h6 class="tema">mas info</h6>
    </div>
  </div>
            </div>
            </div>               })
