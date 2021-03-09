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
<<<<<<< HEAD
      # Will raise ActiveModel::ForbiddenAttributesError
=======
>>>>>>> cbcc3903c038bbd899f94541127862d174d70305
      redirect_to piano_path(@piano)
    else
      render :new
    end
<<<<<<< HEAD
=======
    # Will raise ActiveModel::ForbiddenAttributesError
>>>>>>> cbcc3903c038bbd899f94541127862d174d70305
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
