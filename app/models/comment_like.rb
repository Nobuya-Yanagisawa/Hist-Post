class CommentLike < ApplicationRecord
	validates :user_id, {presence:true}
	validates :post_id, {presence:true}
	validates :comment_id, {presence:true}
end
