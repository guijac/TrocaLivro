class CreateLivroBancos < ActiveRecord::Migration
  def change
    create_table :livro_bancos do |t|
      t.string :isbn
      t.string :titulo
      t.string :autor
      t.string :editora

      t.timestamps
    end
  end
end
