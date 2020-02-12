class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save    # POST /restaurants
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
   # GET /restaurants/:id/edit
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(params[:restaurant]) # PATCH /restaurants/:id
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path # DELETE /restaurants/:id
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def chef
    @restaurant = Restaurant.find(params[:id])
    @chef_name = @restaurant.chef
  end


end
