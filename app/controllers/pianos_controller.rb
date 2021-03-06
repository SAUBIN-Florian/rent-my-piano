class PianosController < ApplicationController
  def index
    if params[:query].present?
      @pianos = Piano.search_by_title_and_price_and_brand(params[:query])
    else
      @pianos = Piano.all
    end
  end

  def show
    @piano = Piano.find(params[:id])
    @booking = Booking.new
    @bookings = Booking.find_by(id: @piano)
    if @piano.geocoded?   
      @markers = [
        {
          lat: @piano.latitude,
          lng: @piano.longitude
        }]
      else
        return "Piano's address not given by the owner"  
      end
  end

  def new
    @piano = Piano.new
  end

  def create
    @piano = Piano.new(piano_params)
    @piano.user = current_user
    if @piano.save
      redirect_to piano_path(@piano)
    else
      render :new
    end
  end

  def edit
    @piano = Piano.find(params[:id])
  end

  def update
    @piano = Piano.find(params[:id])
    @piano.update(piano_params)

    redirect_to piano_path(@piano)
  end

  def destroy
    @piano = Piano.find(params[:id])
    @piano.user = current_user
    if @piano.destroy
      redirect_to pianos_path
    else
      render :show
    end
  end

  private

  def piano_params
    params.require(:piano).permit(:name, :price, :brand, :photo, :address, :latitude, :longitude)
  end
end
