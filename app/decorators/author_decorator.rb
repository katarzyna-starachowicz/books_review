class AuthorDecorator < Draper::Decorator
  delegate :first_name, :last_name

  def formatted_books_titles
    object.books.map(&:title).join(" | ")
  end

  def name
    "#{first_name} #{last_name}"
  end
end
