Deface::Override.new(:virtual_path => %q{spree/shared/_products},
                          :name => %q{replace_products_partial},
                          :replace => %q{#products[data-hook]},
                          :text => %q{
  <div id="products" style="margin-bottom: 20px;"data-hook>
  <% products.each do |product| %>
    <% if Spree::Config[:show_zero_stock_products] || product.has_stock? %>
      <div class="row">
        <%= form_for :order, :url => populate_orders_url do |f| %>
        <div class="span1">
          <%= link_to small_image(product, :itemprop => "image"), product, :itemprop => 'url' %>
        </div>
        <div class="span2">
          <h4><%= product.taxons.last.name %></h4>
          <div class="row">
            <div class="span2">
              <h4 style="color:red; padding-top:10px;"><%= product.display_price %></h4>
            </div>
          </div>
        </div>
        <div class="span5">
          <h4><%= link_to truncate(product.name, :length => 50), product, :class => 'info', :itemprop => "name", :title => product.name %></h4>
          <div class="row">
            <div class="span2">
              <h4 style="padding-top:4px;"><%= product.calculate_tires %></h4>
              <%= hidden_field_tag (product.has_variants? ? :quantity : "variants[#{product.master.id}]"), 1, :in => 1..product.on_hand %>
            </div>
            <div class="span3">
              <%= button_tag :class => 'btn btn-primary btn-small', :id => 'add-to-cart-button', :type => :submit do %>
                <i class="icon-shopping-cart icon-white"></i>
                <%= t(:add_to_cart) %>
              <% end %>
            </div>
          </div>
        </div>
        <% end %>
      </div>
      <hr style="background-color:#888a85;height:2px;width:600px;">
    <% end %>
  <% end %>
</div>})
