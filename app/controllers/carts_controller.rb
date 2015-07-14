class CartsController < ApplicationController

  def index
    if session[:user_id] != nil #user is logged on
      @user = User.find(session[:user_id])
      @carts = Cart.where({user_id: @user.id})

      @states = State.all
      render :index
    else
      redirect_to "/"
    end
  end

  def new
  end

  def allcarts
    # This controller finds all of the carts by user id and assigns an instance variable to them so they can be grabbed later
    #get carts by id.
    #@cart = Cart.find(params[:user_id])
    #@cart = Cart.find(session[:user_id])
    #rener :json @cart
    @all_carts = Cart.all
    # @all_carts = Cart.find(session[:user_id]) 
    render json: @all_carts
  end

  def create
    cartData = {}
    cartData[:description] = params[:description]
    cartData[:address] = params[:address]
    cartData[:city] = params[:city]
    cartData[:state] = params[:state]
    cartData[:zip] = params[:zip]
    cartData[:user_id] = params[:user_id]

    cart = Cart.new(cartData)

    cart.save

    # redirect_to "/itineraries/#{params[:itinerary_id]}"
    redirect_to "/users/#{params[:user_id]}/carts" #this route doesn't take us to the right user index's page but it does render a page
    # redirect_to "/users/#{@user.id}/carts" #this doesn't work
    # "/users/#{user.id}/carts"

  end

end