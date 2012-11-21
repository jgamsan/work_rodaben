Deface::Override.new(:virtual_path => %q{spree/checkout/edit},
                          :name => %q{replace_checkout},
                          :replace => %q{[data-hook="checkout_header"]},
                          :text => %q{
      <div class="row" data-hook="checkout_header">
        <h1 class="span3" data-hook="checkout_title"><%= t(:checkout) %></h1>
        <div class="span9" data-hook="checkout_progress"><%= checkout_progress %></div>
      </div>})
