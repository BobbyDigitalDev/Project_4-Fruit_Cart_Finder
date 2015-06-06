class CartsController < ApplicationController

  def index
    if session[:user_id] != nil #user is logged on
      @user = User.find(session[:user_id])
      @carts = Cart.where({user_id: @user.id})

      render :index
    end
  end

  def new
  end
  



end