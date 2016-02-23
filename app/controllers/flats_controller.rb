class FlatsController < ApplicationController
    before_action :find_flat, only: [:edit, :update, :destroy, :show]
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
      @flats = Flat.all
    end

    def show
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
      @flats = Flat.all.select { |f| f.user == params[:user_id] }
      render :index
    end

private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:address, :description)
  end

end
