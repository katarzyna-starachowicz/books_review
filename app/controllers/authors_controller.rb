class AuthorsController < ApplicationController
  expose(:authors) { Author.includes(:books) }
  expose(:author)
end
