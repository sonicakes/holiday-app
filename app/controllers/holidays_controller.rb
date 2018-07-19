class HolidaysController < ApplicationController
    before_action :authorize
  def index
    @holidays = Holiday.all.order(:created_at)
  end

  def new
      @holiday = Holiday.new
  end

  def show
      @holiday = Holiday.find params[:id]
  end

  def edit
      @holiday = Holiday.find params[:id]
      unless @current_user.holidays.include? @holiday
        redirect_to root_path
      else
        render :edit
      end
  end

  def update
    holiday = Holiday.find params[:id]
    holiday.update holiday_params
    redirect_to holiday
  end

  def create
    holiday = Holiday.create holiday_params
    current_user.holidays << holiday
    flash[:success] =  "Holiday Created!"
    redirect_to holiday # GET the show page
  end

  def destroy
    holiday = Holiday.find params[:id]
    holiday.destroy if @current_user.holidays.include? holiday
      flash[:success] =  "Holiday Deleted!"
    redirect_to holidays_path
  end

# Strong params: create a whitelist of permitted parameters
private
def holiday_params
  params.require(:holiday).permit(:title, :user_id, :location)
end
end
