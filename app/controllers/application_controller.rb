class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if(current_user.admin?)
      admin_dashboard_path
    else
      root_path
    end
  end
  def current_cart
  	 begin
		 Cart.find(session[:cart_id])
	    rescue ActiveRecord::RecordNotFound
		 cart = Cart.create
		 session[:cart_id] = cart.id
		 cart
	    end
	end
end
