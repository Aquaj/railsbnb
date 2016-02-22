class BookingsController < ApplicationController
  before_action :find_booking, only: [ :new, :create ]

def create
  @booking = @user.booking.build(booking_params)
  @booking.save
end

def new
end

def show
  @booking.all
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
