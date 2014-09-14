class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy				#cada articulo tiene varios comments
	validates 	:title, 
				:presence => { :message => 'no puede estar en blanco' }, 		#presence: true
				length: { minimum: 5, too_short: " no puede tener menos de 5 caracteres" }
end