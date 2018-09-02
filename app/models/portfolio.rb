class Portfolio < ApplicationRecord
	validates_presence_of :title, :main_image, :thumb_image

	scope :angular, -> { where(subtitle: "Angular") }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||="https://via.placeholder.com/650x350"
		self.thumb_image ||="https://via.placeholder.com/350x200"
	end
end
