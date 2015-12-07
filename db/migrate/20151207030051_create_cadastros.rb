class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.string :email
      t.date :dataNascimento
      t.string :senha
      t.string :confirmeSenha

      t.timestamps null: false
    end
  end
end
