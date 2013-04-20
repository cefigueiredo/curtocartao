class CreateCustos < ActiveRecord::Migration
  def change
    create_table :custos do |t|
      t.string :nome
      t.float :meta
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps
    end
  end
end
