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
         if(user_signed_in?)
  		     Cart.find_by_user_id(current_user.id)
         end
	   rescue ActiveRecord::RecordNotFound
        if(user_signed_in?)

		      cart = Cart.create(:user_id=> current_user.id)
		        session[:cart_id] = cart.id
		          cart
        else
              cart=nil
        end
	   end
	end
end
