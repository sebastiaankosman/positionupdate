
class PositionupdatesController < ApplicationController

  def new
    @positionupdates = Positionupdates.new
  end

  def create
    @positionupdates = Positionupdates.new(params[:positionupdates])

    if @positionupdates.save
      PositionupdatesMailer.general_message(@positionupdates).deliver
      render :thanks
    else
      render :new
    end
  end

  def thanks
  end

end
