class Comment < ApplicationRecord
	belongs_to :post
	belongs_to :user
	has_many :comment_likes, dependent: :destroy
	validates :comment_text, presence: true
end
