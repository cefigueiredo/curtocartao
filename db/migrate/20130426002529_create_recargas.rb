class CreateRecargas < ActiveRecord::Migration
  def change
    create_table :recargas do |t|
      t.integer :cliente_id
      t.float :valor

      t.timestamps
    end
  end
end
