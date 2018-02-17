class Article < ApplicationRecord
	belongs_to :homepages, :optional => true
	belongs_to :user, :optional => true
	belongs_to :about, :optional => true
	belongs_to :history, :optional => true
	belongs_to :society, :optional => true
	belongs_to :empire, :optional => true
	validates :title, presence: true,
					  length: { minimum: 5 }
	validates :text, presence: true

end
