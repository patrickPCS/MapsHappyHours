class CreateCadastroComercios < ActiveRecord::Migration
  def change
    create_table :cadastro_comercios do |t|
      t.string :nome
      t.string :tipo
      t.string :endereco
      t.string :telefone
      t.float :avaliacao

      t.timestamps null: false
    end
  end
end
