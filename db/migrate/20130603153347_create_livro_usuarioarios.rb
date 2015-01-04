class CreateLivroUsuarioarios < ActiveRecord::Migration
  def change
    create_table :livro_usuarioarios do |t|
		t.integer :user_id, limit: 80
		t.string :isbn
		t.string :comentario
      t.timestamps
    end
  end
end
