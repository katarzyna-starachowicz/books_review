class BookDecorator < Draper::Decorator
  delegate_all

  def title_with_date
    "#{title} (#{published_at.strftime('%Y')})"
  end

  def formatted_authors
    object.authors.map do |author|
      "#{author.first_name} #{author.last_name}"
    end.join(" | ")
  end

  def self.collection_decorator_class
    PaginatingDecorator
  end
end
