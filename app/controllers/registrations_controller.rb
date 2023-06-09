class RegistrationsController < ApplicationController
   def new 
    @user = User.new
   end
    
   def create
        @user = User.new(user_params)
        # render plain: "Thanks!"
        if @user.save
            session[:user_id] = @user.id
        redirect_to books_path, notice: "Successfully created account"
        else
            # flash[:alert] = "Something was wrong"
            render :new 
        end
    end
   
    private

    def user_params
      params.require(:user).permit(:name,:email, :password, :password_confirmation)
    end
end