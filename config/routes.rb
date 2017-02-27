Erp::Sales::Engine.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
		namespace :backend, module: "backend", path: "backend/sales" do
			get 'sales_orders' => 'sales#sales_orders', as: :sales_orders
			post 'sales_orders_listing' => 'sales#sales_orders_listing', as: :sales_orders_listing
			get 'sales_order_details' => 'sales#sales_order_details', as: :sales_order_details
		end
	end
end