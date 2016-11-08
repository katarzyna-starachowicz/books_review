class Book < ActiveRecord::Base
  validates :title, :published_at, presence: true
end
