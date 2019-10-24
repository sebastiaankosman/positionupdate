
class PositionUpdatesController < ApplicationController

  def new
    @positionupdate = PositionUpdate.new
  end

  def create
    @positionupdate = PositionUpdate.new(positionupdate_params)
    if @positionupdate.save
      # PositionupdatesMailer.general_message(@positionupdate).deliver
    else
      render :new
    end
  end

  private def positionupdate_params
    params.permit(:date, :time, :activity)

  end
 end
