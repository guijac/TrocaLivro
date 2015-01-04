class Troca < ActiveRecord::Base
  attr_accessible :usuarioSolicitante_id, :livroSolicitante_id, :usuarioSolicitado_id, :livroSolicitado_id, :comentario, :status

end
