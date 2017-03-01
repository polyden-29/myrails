class Article < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true, length: {minimum: 6,maximum: 100 }
	validates :text, presence: true, length: {minimum: 5,maximum:2000 }
	validates :user_id, presence: true
	
end