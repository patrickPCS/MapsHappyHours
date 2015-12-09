class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :DataNascimento
      t.string :senha
      t.string :ConfirmeSenha

      t.timestamps null: false
    end
  end
end
