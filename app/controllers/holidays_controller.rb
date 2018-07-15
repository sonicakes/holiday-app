class HolidaysController < ApplicationController
  def index
    @holidays = Holiday.all.order(:created_at)
  end

  def new
  end

  def show
      @holiday = Holiday.find params[:id]
  end
  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
