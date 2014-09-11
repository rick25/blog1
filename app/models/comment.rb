class Comment < ActiveRecord::Base
  	belongs_to :article			#cada comentario pertenece a un article
end
