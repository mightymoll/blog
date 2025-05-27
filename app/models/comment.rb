class Comment < ApplicationRecord
  # setes up and Active Record association with 'article' model
  belongs_to :article
end
