Deface::Override.new(:virtual_path => %q{spree/checkout/_payment},
                          :name => %q{replace_payment},
                          :replace => %q{[data-hook="buttons"]},
                          :text => %q{
      <div class="form-buttons" data-hook="buttons">
  <%= submit_tag t(:save_and_continue), :class => 'btn btn-primary' %>
  <script>disableSaveOnClick();</script>
</div>})
