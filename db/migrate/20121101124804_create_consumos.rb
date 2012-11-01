class CreateConsumos < ActiveRecord::Migration
  def change
    create_table :consumos do |t|
      t.date :data
      t.integer :cliente_id
      t.integer :quantidade
      t.integer :produto_id

      t.timestamps
    end
  end
end
