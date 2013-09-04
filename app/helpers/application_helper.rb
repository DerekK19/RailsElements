module ApplicationHelper
	def tableless_page(*args)
		if args.size == 3
			Static::tableless_page(current_header, current_navbar, args[0], "", left_menu_items, args[1], args[2])
		else
			Static::tableless_page(current_header, current_navbar, args[0], "/" + args[1], left_menu_items, args[2], args[3])
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
	
end
