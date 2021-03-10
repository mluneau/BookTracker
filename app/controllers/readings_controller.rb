class ReadingsController < ApplicationController
  before_action :find_book, only: [:new, :create]
  before_action :find_reading, only: [:show]

  def index
    @readings = Reading.all
  end

  def show
  end

  def new
    @reading = Reading.new
  end

  def create
    @reading = reading.new(reading_params)
    if @reading.save
      redirect_to reading_path(@reading)
    else
      render :new
    end
  end

  def update
  end

  private

  def find_book
    @book = Book.find(params[:book_id])
  end

  def find_reading
    @reading = Reading.find(params[:id])
  end

  def reading_params
    params.require(:reading).permit(:start_date, :end_date, :rating, :status)
  end
end
