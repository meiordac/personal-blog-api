class Comment < ApplicationRecord
after_initialize :set_defaults, unless: :persisted?
belongs_to :post, optional: true

  def set_defaults
    self.upvote = 0
  end
end
