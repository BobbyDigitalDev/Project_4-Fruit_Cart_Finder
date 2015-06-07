class CartsController < ApplicationController

  def index
    if session[:user_id] != nil #user is logged on
      @user = User.find(session[:user_id])
      @carts = Cart.where({user_id: @user.id})

      render :index
    else
      redirect_to "/"
    end
  end

  def new
  end

  def create
    cartData = {}
    cartData[:description] = params[:description]
    cartData[:address] = params[:address]
    cartData[:city] = params[:city]
    cartData[:state] = params[:state]
    cartData[:zip] = params[:zip]

    cart = Cart.new(cartData)

    cart.save

    # redirect_to "/itineraries/#{params[:itinerary_id]}"
    redirect_to "/users/#{params[:user_id]}/carts" #this route doesn't take us to the right user index's page but it does render a page
    # redirect_to "/users/#{@user.id}/carts" #this doesn't work
    # "/users/#{user.id}/carts"

  end

  



end