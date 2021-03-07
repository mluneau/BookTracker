class ReadingsController < ApplicationController
  before_action :find_book, only: [:new, :create]
  before_action :find_reading, only: [:index, :show]

  def index
  end

  def show
  end

  def new
  end

  def create
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
