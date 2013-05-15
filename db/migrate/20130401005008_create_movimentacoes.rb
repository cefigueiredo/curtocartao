class CreateMovimentacoes < ActiveRecord::Migration
  def change
    create_table :movimentacoes do |t|
      t.string :descricao
      t.integer :grupo_id
      t.float :valor
      t.date :data

      t.timestamps
    end
  end
end
