class BooksController < ApplicationController
  def index
    @books = Book.includes(:author).order(:name).page(params[:page])
  end

  def show
    @books = Book.find(params[:id])
  end

  def search
    @books = Book.includes(:author).includes(:genre).all
  end
end