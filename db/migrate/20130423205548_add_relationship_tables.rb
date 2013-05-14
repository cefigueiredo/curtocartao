class AddRelationshipTables < ActiveRecord::Migration
  def up
    create_table :contribuicaos_produtos, :id => false do |t|
      t.integer :contribuicao_id
      t.integer :produto_id
      t.integer  "quantidade"
    end

    create_table :contribuicaos_custos, :id => false do |t|
      t.integer :contribuicao_id
      t.integer :custo_id
      t.float "valor"
    end
  end

  def down
    drop_table :contribuicaos_produtos
    drop_table :contribuicaos_custos
  end
end
