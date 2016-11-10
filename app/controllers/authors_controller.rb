class AuthorsController < ApplicationController
  expose(:authors) { Author.includes(:books).order(:last_name) }
  expose(:author)
end
