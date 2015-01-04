class CreateUsuariolivros < ActiveRecord::Migration
  def change
    create_table :usuariolivros do |t|
      t.integer :user_id
      t.integer :livro_banco_id
      t.string :comentario
      t.timestamps
    end
  end
end
