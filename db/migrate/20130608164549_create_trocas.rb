class CreateTrocas < ActiveRecord::Migration
  def change
    create_table :trocas do |t|
      t.integer :usuarioSolicitante_id
      t.integer :livroSolicitante_id
      t.integer :usuarioSolicitado_id
      t.integer :livroSolicitado_id
      t.string :comentario
      t.string :status
      t.timestamps
    end
  end
end
