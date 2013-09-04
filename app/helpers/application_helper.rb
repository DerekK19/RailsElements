module ApplicationHelper
	def tableless_page(*args)
		if args.size == 3
			tableless_page_private(args[0], "", args[1], args[2])
		else
			tableless_page_private(args[0], "/" + args[1], args[2], args[3])
		end
	end

	# =========================================================================
	private #methods
	# =========================================================================

	def navbar_items
		[
			['Elements', 'elements'],
			['Photos', 'photos'],
			['Weather', 'weather'],
		]
	end
	
	def current_navbar
	'Elements'
	end
	
	def current_header
	'Elements On Rails'
	end
	
	def left_menu_items
		[
			['Elements', '/elements'],
			['Series', '/series'],
			['Alternative Names', '/alternative_names'],
		]
	end
		
	def tableless_page_private(right_text, right_link, error_message, yield_data)
	url_root = 	'http://' + request.host_with_port + Rails::configuration.action_controller.relative_url_root
	Static::header(right_text, url_root+right_link, current_header, current_navbar) +
	'
	  <div class="page-content">
		<div class="left-menu">
		  ' + Static::left_menu(url_root, left_menu_items) + '
		</div>
		<div class="right-content">
		  <br/>
		  <div class="error-content">
			<p style="color: green">' + (error_message.nil? ? "" : error_message) + '</p>
		  </div>
		  <br/>
		  <div class="page-data">
			' + yield_data + '
		  </div>
		</div>
	  </div>

	  ' + Static::footer(url_root)
	end
	
end
