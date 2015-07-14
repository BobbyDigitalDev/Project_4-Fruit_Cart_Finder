class UsersController < ApplicationController


  #creates a new user and assigns it the instance variable of @user
  def new
    @user = User.new
    render :new
  end

  def show
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]

  if params[:password] == params[:password_confirmation]#checks to see if the password and the password_confirmation match. If they don't an error will display to the user
    flash.now[:alert] = "Passwords must match, please fill in you passwords again."
  end


    if @user.save #saves the user if everything checks out
      # redirect_to "/users/#{user.id}/carts" #this must route the user to their carts page COME BACK AND TWEAK
        redirect_to "/"
    else
      render :new 
    end
  end

  def edit
  end
end