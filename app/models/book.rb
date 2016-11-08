class Book < ActiveRecord::Base
  has_many :authors_books
  has_many :authors, through: :authors_books

  validates :title, :published_at, presence: true
end
