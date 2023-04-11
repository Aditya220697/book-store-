class ApplicationController < ActionController::Base
    before_action :set_current_user
    before_action :current_cart

    def set_current_user
      if session[:user_id]
        Current.user = User.find_by(id: session[:user_id])
      end
    end

    def current_cart
          @current_cart ||=ShoppingCart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
          @current_cart = ShoppingCart.create(session[:cart_id])
          session[:cart_id]= @current_cart.id
    end

    # def current_cart
    #   @current_cart ||= ShoppingCart.find_or_create_by(cart_id: Current.user.id)
    # end

    def require_user_logged_in!
      redirect_to sign_in_path, alert: "You must be signed in to do that" if Current.user.nil?
    end
end
