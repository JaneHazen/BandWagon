class AttendancesController < ApplicationController
  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new(attendance_params)
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    if @attendance.save
      respond_to do |format|
        format.html {redirect_to concert_path(@attendance.concert_id)}
        format.js
      end
    else
      @errors = ["Oh no! Maybe you're not attending..."]
      redirect_to
    end
  end

  def show
  end

  private

  def attendance_params
    params.require(:attendance).permit(:attendee_id, :concert_id)
  end
end
