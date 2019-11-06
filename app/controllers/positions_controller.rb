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
    @barge_name = current_user.barge_name
    if @position.save!
    redirect_to :action => 'new'

      PositionMailer.general_message(@position, @barge_name).deliver

    else
      render :new
    end
  end

  private def position_params
    params.require(:position).permit(:date, :time, :activity, :tripnumber, :barge_name, :comment)

  end
end
