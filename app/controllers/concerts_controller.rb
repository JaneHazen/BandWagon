class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
    @concerts = @concerts.sort_by{|concert| concert.date}
  end

  def show
    @concert = Concert.find(params[:id])
    @attendance = Attendance.new
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
