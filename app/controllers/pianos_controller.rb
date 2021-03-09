class PianosController < ApplicationController
  def index
    @pianos = Piano.all
  end

  def show
    @piano = Piano.find(params[:id])
  end

  def new
    @piano = Piano.new
  end

  def create
    @piano = Piano.new(piano_params)
    @piano.user = current_user
    if @piano.save
      # Will raise ActiveModel::ForbiddenAttributesError
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
    @piano.destroy
    redirect_to pianos_path
  end

  private

  def piano_params
    params.require(:piano).permit(:name, :price, :brand)
  end
end
