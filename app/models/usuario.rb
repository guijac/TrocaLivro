class Usuario < ActiveRecord::Base
  attr_accessible :bairro, :cep, :cidade, :email, :endereco, :estado, :nome, :senha, :sexo, :telefoneCelular, :telefoneFixo
  
end
