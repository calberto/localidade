class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
      t.string :nome
      t.string :sigla
      t.integer :patria_id

      t.timestamps
    end
  end
end
