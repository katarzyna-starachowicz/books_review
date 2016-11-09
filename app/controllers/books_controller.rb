class BooksController < ApplicationController
  expose(:books) { Book.inlcudes(:authors) }
  expose(:book)
end
