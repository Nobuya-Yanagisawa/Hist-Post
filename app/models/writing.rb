class Writing < ApplicationRecord
	belongs_to :word
	has_many :writing_likes
end
