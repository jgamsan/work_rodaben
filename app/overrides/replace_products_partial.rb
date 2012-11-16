Deface::Override.new(:virtual_path => %q{spree/shared/_products},
                          :name => %q{replace_products_partial},
                          :replace => %q{#products[data-hook]},
                          :text => %q{
  <div id="products" style="margin-bottom: 20px;"data-hook>
  <% products.each do |product| %>
    <% if Spree::Config[:show_zero_stock_products] || product.has_stock? %>
      <div class="row">
        <div class="span1">
          <%= link_to small_image(product, :itemprop => "image"), product, :itemprop => 'url' %>
        </div>
        <div class="span5">
          <h4><%= link_to truncate(product.name, :length => 50), product, :class => 'info', :itemprop => "name", :title => product.name %></h4>
          <div class="row">
            <div class="span3"><h4><%= product.taxons.last.name %></h4></div>
            <div class="span2"><span class="badge badge-info price"><%= product.display_price %></span></div>
          </div>
        </div>
    <div class="span2">
     <a class="btn btn-primary btn-cart" href="cart.html">Add to cart</a>
    </div>
  </div>
    <% end %>
  <% end %>
</div>})
