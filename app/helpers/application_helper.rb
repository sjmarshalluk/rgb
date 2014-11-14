module ApplicationHelper


	def link_to_active_class(name, active_class_names, options = {}, html_options = {}, &block)
	  html_options[:class] = html_options[:class].to_s + active_class_names if current_page?(options.to_s)
	  link_to name, options, html_options, &block
	end
	
	def sortable(column, title = nil)
		title ||= column.titleize
		css_class = column == sort_column ? "current #{sort_direction}" : nil
		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
		link_to title, {:sort => column, :direction => direction}, {:class => css_class}
	end

end
