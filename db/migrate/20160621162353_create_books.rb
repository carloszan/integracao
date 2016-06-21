class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.datetime :hour, null: false
      t.references :employee, index: true, foreign_key: true, null: false
      t.references :student, index: true, foreign_key: true, default: :null

      t.timestamps null: false
    end
  end
end
