class CarsController < ApplicationController

  before_action :authenticate_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :create]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.contact_email = @current_user.email
    if @car.save
      redirect_to cars_path
    else
      render 'new'
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update_attributes(car_params)
      redirect_to cars_path
    else
      render 'edit'
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

end

private

def car_params
  params.require(:car).permit(:year, :make, :car_model, :mileage, :ext_color, :int_color, :engine, :transmission, :drivetrain, :fuel, :door_count, :description, :price, :contact_email, :picture)
end

def set_user
  @user = current_user
end

