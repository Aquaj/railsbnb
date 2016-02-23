class BookingsController < ApplicationController
  before_action :find_booking, only: [ :show, :destroy ]

def create
  @flat = Flat.find(params[:flat_id])
  @booking = current_user.bookings.new(booking_params)
  if @booking.save
    redirect_to user_booking_path(current_user, @booking)
  else render :new
  end
end

def new
  @booking = Booking.new
  @flat = Flat.find(params[:flat_id])

end

def show
end

def index
  @bookings = Booking.all
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
    @booking = Booking.find(params[:user_id])
end



end
