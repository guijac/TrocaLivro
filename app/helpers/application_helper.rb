module ApplicationHelper
	def menu_principal
	menu = %w(usuario livro_banco)
	menu_principal = "<ul>"
	menu.each do |item|
		menu_principal << "<li>"
		menu_principal << link_to(item, :controller => item.pluralize)
		menu_principal << "</li>"
	end
	menu_principal << "</ul>"
	raw menu_principal
	end
end
