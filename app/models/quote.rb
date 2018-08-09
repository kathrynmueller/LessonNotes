class Quote < ApplicationRecord

	belongs_to :user

	# validations
	validates :quote, presence: true

end
