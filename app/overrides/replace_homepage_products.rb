Deface::Override.new(:virtual_path => %q{spree/home/index},
                          :name => %q{replace_homepage_products},
                          :replace => %q{[data-hook='homepage_products']},
                          :closing_selector => %q{},
                          :text => %q{
            <div data-hook="homepage_products">
            <div id="offerts" class="row offert" data-hook="products_in_offert">
      <h3> Neumaticos en Oferta </h3>
      <%= render :partial => 'spree/shared/products', :locals => { :products => @products } %>
    </div>
  </div>})
