Deface::Override.new(:virtual_path => %q{spree/checkout/_delivery},
                          :name => %q{replace_delivery},
                          :replace => %q{[data-hook="buttons"]},
                          :text => %q{
      <div class="form-buttons" data-hook="buttons">
  <%= submit_tag t(:save_and_continue), :class => 'btn btn-primary' %>
</div>})
