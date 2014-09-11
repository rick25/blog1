class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy				#cada articulo tiene varios comments
	validates :title, presence: true,
	                   length: { minimum: 5 }
end