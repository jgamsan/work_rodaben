Deface::Override.new(:virtual_path => %q{spree/checkout/_address},
                          :name => %q{replace_address},
                          :replace => %q{[data-hook="billing_fieldset_wrapper"]},
                          :text => %q{<div class="span6" data-hook="billing_fieldset_wrapper">})

Deface::Override.new(:virtual_path => %q{spree/checkout/_address},
                          :name => %q{replace_address},
                          :replace => %q{[data-hook="shipping_fieldset_wrapper"]},
                          :text => %q{<div class="span6" data-hook="shipping_fieldset_wrapper">})
