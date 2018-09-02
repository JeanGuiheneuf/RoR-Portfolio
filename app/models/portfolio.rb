class Portfolio < ApplicationRecord

	include Placeholder

	validates_presence_of :title, :main_image, :thumb_image

	scope :angular, -> { where(subtitle: "Angular") }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||=Placeholder.image_generator("650","350")
		self.thumb_image ||=Placeholder.image_generator("350","200")
	end
end
