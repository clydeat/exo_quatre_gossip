class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gossip
  has_many :comments
  has_many :likes
end
