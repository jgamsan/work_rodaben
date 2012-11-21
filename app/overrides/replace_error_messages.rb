Deface::Override.new(:virtual_path => %q{spree/shared/_error_messages},
                          :name => %q{replace_error_messages},
                          :set_attributes => '#errorExplanation',
                          :attributes => {:class => 'alert alert-error'})
