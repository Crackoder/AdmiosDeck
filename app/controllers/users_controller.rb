class UsersController < ApplicationController
	before_filter :require_login, :only => :delete

	def new
	  @user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	    redirect_to root_path, :notice => "Signed up!"
	  else
	    render :new
	  end
	end

	def destroy
	  if !User.authenticate(current_user.username, params[:password]).nil?
	    current_user.destroy
        redirect_to login_url, :alert => "Your account has been deleted."
      else
      	redirect_to delete_account_path, :alert => "Incorrect password."
  	  end
    end

	def manage_user
	end

	def delete
	end
end
