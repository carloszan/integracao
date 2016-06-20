class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :cnpj
      t.string :tel

      t.timestamps null: false
    end
  end
end
