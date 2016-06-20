class AddGymToEmployees < ActiveRecord::Migration
  def change
    add_reference :employees, :gym, index: true, foreign_key: true
  end
end
