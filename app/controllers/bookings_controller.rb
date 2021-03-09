class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @piano = Piano.find(params[:piano_id])
    @booking.piano = @piano
    if @booking.save
      redirect_to piano_path(@piano)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(booking_params)
    @booking.update(booking_params)
    redirect_to piano_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @Booking.destroy
    redirect_to piano_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
