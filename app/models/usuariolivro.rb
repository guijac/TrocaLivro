class Usuariolivro < ActiveRecord::Base
  attr_accessible :comentario, :user_id, :livro_banco_id
  
  belongs_to :livro_banco
end