class Author < ActiveRecord::Base
  has_many :authors_books
  has_many :books, through: :authors_books

  validates :first_name, :last_name, presence: true
end
