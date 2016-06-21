class AddGymToStudents < ActiveRecord::Migration
  def change
    add_reference :students, :gym, index: true, foreign_key: true
  end
end
