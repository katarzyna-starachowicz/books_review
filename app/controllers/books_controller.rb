class BooksController < ApplicationController
  expose(:books) { Book.includes(:authors).page(params[:page]).per_page(5).order(:title) }
  expose(:book)
end
