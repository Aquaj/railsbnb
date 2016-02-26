class FlatsController < ApplicationController
    before_action :find_flat, only: [:edit, :update, :destroy, :show]
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
      if (params[:search] && !params[:search][:address].blank?)
        @address = params[:search][:address]
        @radius = params[:search][:radius] || 10
      end
      @flats = Flat.all
      @flats = @flats.near(@address, @radius) if @address
    end

    def show
      @booking = @flat.bookings.new
    end

    def new
      @flat = current_user.flats.new
    end

    def create
      @flat = current_user.flats.new(flat_params)
      if @flat.save
        redirect_to @flat
      else
        render :new
      end
    end

    def destroy
      @flat.destroy
      redirect_to flats_path
    end

    def show_flats
      @flat = current_user.flats.new
      @flats = Flat.all.select { |f| f.user == current_user }
    end

private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:address, :price, :description, :bathroom, :bedroom, :washing_machine, :tv_wifi, :swimming_pool, :wheelchair, :photo, :photo_cache)
  end

end



