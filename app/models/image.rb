class Image < ActiveRecord::Base
	belongs_to :page
	belongs_to :post
	belongs_to :gallery
end
