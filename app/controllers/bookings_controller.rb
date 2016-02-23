class BookingsController < ApplicationController
  before_action :find_booking, only: [ :show, :destroy ]

def create
  @booking = @user.bookings.new(booking_params)
  if @booking.save
    redirect_to @booking
  else render :new
  end
end

def new
  @booking = Booking.new

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
    params.require(:booking).permit(:user_id, :flat_id, :start_date, :end_date)
  end
def find_booking
    @booking = Booking.find(params[:user_id])
end



end
