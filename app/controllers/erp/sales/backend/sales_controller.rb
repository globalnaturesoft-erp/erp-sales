module Erp
  module Sales
    module Backend
      class SalesController < Erp::Backend::BackendController
        
        def sales_orders
          authorize! :sales_sales_orders_index, nil
        end

        # POST /orders/list
        def sales_orders_listing
          authorize! :sales_sales_orders_index, nil
          
          @orders = Erp::Orders::Order.sales_orders.search(params).paginate(:page => params[:page], :per_page => 10)
          
          render layout: nil
        end
        
        def sales_order_details
          @order = Erp::Orders::Order.find(params[:id])
          
          render layout: nil
        end
        
      end
    end
  end
end
