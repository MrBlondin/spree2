Deface::Override.new(:virtual_path => "spree/shared/_header",
                     :insert_after => "#logo",
                     :text => '<div class="languageC"><%= link_to "fi", "/fi", :class => "fin" %><%= link_to "en",
"/en", :class => "eng" %></div>',
                     :name => 'choose_lang')
