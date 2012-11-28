Deface::Override.new(:virtual_path => %q{spree/orders/show},
                          :name => %q{replace_links_in_show_order},
                          :replace => %q{p[data-hook="links"]},
                          :text => %q{
      <p data-hook="links">
    <%= link_to t(:back_to_store), spree.root_path, :class => "btn btn-primary" %>
    <% unless params.has_key? :checkout_complete %>
      <% if try_spree_current_user && respond_to?(:spree_account_path) %>
        <%= link_to t(:my_account), spree_account_path, :class => "btn btn-primary" %>
      <% end %>
    <% end %>
  </p>
                          })
