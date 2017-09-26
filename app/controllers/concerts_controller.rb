class ConcertsController < ApplicationController
  def index
    p "*" * 100
    p params
    @concerts = Concert.page(params[:page]).per(6)
    # @concerts = @concerts.sort_by{|concert| concert.date}
  end

  def show
    @concert = Concert.find(params[:id])
    @attendance = Attendance.new
    current_user
  end

  def concert_params
    # params.
  end
end
