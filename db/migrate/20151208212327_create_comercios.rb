class CreateComercios < ActiveRecord::Migration
  def change
    create_table :comercios do |t|
      t.string :nome
      t.string :endereco
      t.string :tipo
      t.string :tefefone

      t.timestamps null: false
    end
  end
end
