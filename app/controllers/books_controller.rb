class BooksController < ApplicationController
  expose(:books) { Book.includes(:authors).order(:title) }
  expose(:book)
end
