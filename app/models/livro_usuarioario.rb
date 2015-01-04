class LivroUsuarioario < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :usuario_id, :isbn, :comentario
end
