class Comment < ApplicationRecord

  belongs_to :commentable, optional: true
  belongs_to :user, optional: true

end
