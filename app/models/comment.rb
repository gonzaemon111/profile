class Comment < ApplicationRecord
  belongs_to :article
  validates :comment, presence: true
  validates :article_id, presence: true
end
