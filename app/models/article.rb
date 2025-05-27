class Article < ApplicationRecord
  # validate user-inputs for title & body @ new article form
  # includes minimum length for 'body'
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
