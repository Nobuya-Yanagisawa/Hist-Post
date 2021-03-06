class Post < ApplicationRecord
	attachment :post_image

	has_many :likes, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :comment_likes, dependent: :destroy

	has_many :tags, dependent: :destroy, inverse_of: :post
	accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true

	has_many :image_details, dependent: :destroy, inverse_of: :post
	accepts_nested_attributes_for :image_details, reject_if: :all_blank, allow_destroy: true

	belongs_to :user

	def liked_by?(user) #いいねしているかどうか
    likes.where(user_id: user.id).exists?
  end

end
