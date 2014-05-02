class AddDefaultValueToSaldoAttribute < ActiveRecord::Migration
  def change
    change_column :clientes, :saldo, :float, :default => 0.0
  end
end
