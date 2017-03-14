class CreatePatrias < ActiveRecord::Migration[5.0]
  def change
    create_table :patrias do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
  end
end
