class Category < ApplicationRecord
	has_many :words, dependent: :destroy
end
