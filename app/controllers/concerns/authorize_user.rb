module authorize_user
   # app/controllers/concerns/authentication.rb
    
    def authenticate_user!
      redirect_to login_path, alert: "You need to login to access that page." unless user_signed_in?
    end
  
end