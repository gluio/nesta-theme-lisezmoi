require 'bourbon'
require 'neat'
module Nesta
  class App
    helpers do
      def display_menu_item(item, options = {})
        if item.respond_to?(:each)
          if (options[:levels] - 1) > 0
            haml_tag :li do
              display_menu(item, levels: (options[:levels] - 1))
            end
          end
        else
          html_classes = []
          html_classes << current_menu_item_class if current_item?(item)
          html_classes << "menu-#{link_text_to_inline_anchor(item.link_text)}"
          haml_tag :li, class: html_classes.join(" ") do
            haml_tag :a, :<, href: inline_anchored_path(item) do
              haml_concat link_text(item)
            end
          end
        end
      end

      def inline_anchored_path(item)
        if item.parent && !item.parent.index_page?
          link_parts = []
          link_parts << inline_anchored_path(item.parent)
          link_parts << "#"
          link_parts << link_text_to_inline_anchor(item.link_text)
          link_parts.join
        else
          path_to(item.abspath)
        end
      end

      def link_text_to_inline_anchor(text)
        text.gsub(/[^a-z0-9]+/i,'-').downcase
      end
    end
  end
end
