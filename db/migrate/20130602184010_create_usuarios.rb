class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :sexo
      t.string :email
      t.string :senha
      t.string :cidade
      t.string :cidade
      t.string :estado
      t.string :endereco
      t.string :cep
      t.string :bairro
      t.string :telefoneFixo
      t.string :telefoneCelular

      t.timestamps
    end
  end
end
