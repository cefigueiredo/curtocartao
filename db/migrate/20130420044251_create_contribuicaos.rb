class CreateContribuicaos < ActiveRecord::Migration
  def change
    create_table :contribuicaos do |t|
      t.integer :cliente_id
      t.datetime "created_at"
      t.datetime "updated_at"

      t.timestamps
    end
  end
end
