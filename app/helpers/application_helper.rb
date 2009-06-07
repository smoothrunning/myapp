# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper


  class TabularFormBuilder < ActionView::Helpers::FormBuilder
    (field_helpers - %w(check_box radio_button hidden_field)).each do |selector|
      src = <<-END_SRC
        def #{selector}(field, options = {})
          @template.content_tag("tr", 
            @template.content_tag("td", field.to_s.humanize + ":") + 
              @template.content_tag("td", super))
        end
      END_SRC
      class_eval src, __FILE__, __LINE__
    end
  end


  def tabular_form_for(name, object = nil, options = nil, &proc)
      concat("<table>", proc.binding)
      form_for(name, 
               object, 
               (options||{}).merge(:builder => TabularFormBuilder), 
               &proc)
      concat("</table>", proc.binding)               
  end


    class TabularAlternatingColorFormBuilder < ActionView::Helpers::FormBuilder
      (field_helpers - %w(check_box radio_button hidden_field)).each do |selector|
        src = <<-END_SRC
          def #{selector}(field, options = {})
            @template.content_tag("tr", 
              @template.content_tag("td", field.to_s.humanize + ":") + 
              @template.content_tag("td", super), 
                :class => (@alt = (@alt ? false : true)) ? "alt-row" : ""  )
          end
        END_SRC
        class_eval src, __FILE__, __LINE__
      end
  end
  
  def tabular_form_with_alternating_colors_for(name,
                                               object = nil, 
                                               options = nil,
                                               &proc)
      concat("<table>", proc.binding)
      form_for(name, 
               object, 
               (options||{}).merge(:builder => TabularAlternatingColorFormBuilder), 
               &proc)
      concat("</table>", proc.binding)               
  end	
	
	
	
end
