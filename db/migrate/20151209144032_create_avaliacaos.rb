class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.float :alimentacao
      t.float :atendimento
      t.float :ambiente
      t.references :comercio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
