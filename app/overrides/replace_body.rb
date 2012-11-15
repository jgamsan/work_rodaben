Deface::Override.new(:virtual_path => %q{spree/layouts/spree_application},
                     :name => %q{replace_body},
                     :replace => %q{[data-hook='body']},
                     :closing_selector => %q{},
                     :text => %q{<%= render :partial => "spree/shared/new_body"%>})