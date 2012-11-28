Deface::Override.new(:virtual_path => %q{spree/checkout/_confirm},
                          :name => %q{replace_confirm},
                          :replace => %q{[data-hook="buttons"]},
                          :text => %q{
      <div class="form-buttons" data-hook="buttons">
  <%#= submit_tag t(:place_order), :class => 'btn btn-primary' %>
  <button type="submit" class="btn btn-primary">
            <i class="icon-ok icon-white"></i> <%= t(:place_order) %>
          </button>
  <script>disableSaveOnClick();</script>
</div>})
