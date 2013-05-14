class AddOrdemToProdutos < ActiveRecord::Migration
  def up
    add_column :produtos, :ordem, :integer
  end
  def down
    remove_column :accounts, :ordem
  end
end
