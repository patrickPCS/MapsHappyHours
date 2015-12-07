class CreateCadastroFacebooks < ActiveRecord::Migration
  def change
    create_table :cadastro_facebooks do |t|
      t.string :email
      t.string :senha

      t.timestamps null: false
    end
  end
end
