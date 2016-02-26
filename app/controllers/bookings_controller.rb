class BookingsController < ApplicationController
  before_action :find_booking, only: [ :show, :destroy ]

def create
  @flat = Flat.find(params[:flat_id])
  @booking = current_user.bookings.new(booking_params)
  if @booking.save
    redirect_to booking_path @booking
  else
    render "bookings/new"
  end
end

def new
  @flat = Flat.find(params[:flat_id])
  @booking = @flat.bookings.new
end

def show
  if current_user == @booking.user
    @price = (@booking.end_date - @booking.start_date).to_i * @booking.flat.price
  else
    redirect_to "/404.html"
  end
end

def index
  @bookings = current_user.bookings
end

def destroy
  @booking.destroy
end

private

  def booking_params
    params[:booking][:flat_id] = params[:flat_id] if params[:booking]
    params.require(:booking).permit(:user_id, :flat_id, :start_date, :end_date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

end
