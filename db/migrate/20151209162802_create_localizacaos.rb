class CreateLocalizacaos < ActiveRecord::Migration
  def change
    create_table :localizacaos do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.float :elevacao

      t.timestamps null: false
    end
  end
end
