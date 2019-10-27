class PositionsController < ApplicationController

  def new
    @position = Position.new
  end

  def index
    @positions = Position.all
  end

  def show
    @position = Position.find(params[:id])
  end

  def create
    @position = Position.new(position_params)
    if @position.save!
      redirect_to @position
      PositionMailer.general_message(@position).deliver

    else
      render :new
    end
  end

  private def position_params
    params.require(:position).permit(:date, :time, :activity, :tripnumber)

  end
end
