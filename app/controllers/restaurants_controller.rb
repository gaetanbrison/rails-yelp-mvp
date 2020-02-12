class RestaurantsController < ApplicationController

   before_action :find_restaurant, only: [ :show, :chef,:update ,:edit , :destroy]

  def index
    @restaurants = Restaurant.all
  end


  def new
    @restaurant = Restaurant.new
  end


  def create
      @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save      # POST /restaurants
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update
  @restaurant.update(params[:restaurant])   # PATCH /restaurants/:id
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path # DELETE /restaurants/:id
  end

  def show
  end


  def chef
    @chef_name = @restaurant.chef
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
