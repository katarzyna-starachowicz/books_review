class BookDecorator < Draper::Decorator
  delegate :title, :published_at

  def title_with_date
    "#{title} (#{published_at.strftime('%Y')})"
  end

  def formatted_authors
    object.authors.map do |author|
      "#{author.first_name} #{author.last_name}"
    end.join(" | ")
  end
end
