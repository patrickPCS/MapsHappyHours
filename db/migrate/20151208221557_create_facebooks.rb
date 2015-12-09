class CreateFacebooks < ActiveRecord::Migration
  def change
    create_table :facebooks do |t|
      t.string :email
      t.string :senha

      t.timestamps null: false
    end
  end
end
