class Page < ActiveRecord::Base
	has_many :pages
	has_many :posts
	has_many :galleries
	has_many :images

	belongs_to :page
end
