Deface::Override.new(:virtual_path => %q{spree/shared/_products},
                          :name => %q{replace_products_partial},
                          :replace => %q{#products[data-hook]},
                          :text => %q{
  <div id="products" class="row" style="margin-top:10px;"data-hook>
  <% reset_cycle('default') %>
  <% products.each do |product| %>
    <% if Spree::Config[:show_zero_stock_products] || product.has_stock? %>
        <div id="product_<%= product.id %>" class="<%= cycle("span2","span2","span2","span2", :name => "classes") %>"data-hook="products_list_item" itemscope itemtype="http://schema.org/Product">
        <div class="product-image">
          <%= link_to small_image(product, :itemprop => "image"), product, :itemprop => 'url' %>
        </div>
        <%= link_to truncate(product.name, :length => 50), product, :class => 'info', :itemprop => "name", :title => product.name %>
        <span class="price selling" itemprop="price"><%= product.display_price %></span>
    </div>
    <% end %>
  <% end %>
  <% reset_cycle("classes") %>
</div>
                          })
