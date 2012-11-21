Deface::Override.new(:virtual_path => %q{spree/checkout/edit},
                          :name => %q{replace_summary},
                          :replace => %q{[data-hook="checkout_content"]},
                          :text => %q{
      <div class="row" data-hook="checkout_content">
    <div class="<%= if @order.state != 'confirm' then 'span8' else 'span12' end %>" data-hook="checkout_form_wrapper">
      <div class="row">
        <%= form_for @order, :url => update_checkout_path(@order.state), :html => { :id => "checkout_form_#{@order.state}" } do |form| %>
        <% unless @order.email? %>
          <p class="field" style='clear: both'>
            <%= form.label :email %><br />
            <%= form.text_field :email %>
          </p>
        <% end %>
        <%= render @order.state, :form => form %>
      <% end %>
    </div>
    </div>
    <% if @order.state != 'confirm' %>
      <div id="checkout-summary" data-hook="checkout_summary_box" class="span3">
        <%= render :partial => 'summary', :locals => { :order => @order } %>
      </div>
    <% end %>
  </div>})
