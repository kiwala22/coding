class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :registration_number
      t.decimal :student_number, :precision => 10, :scale => 0
      t.string :name
      t.decimal :bit2207, :precision => 10, :scale => 1
      t.decimal :csc2200, :precision => 10, :scale => 1
      t.decimal :csc2209, :precision => 10, :scale => 1
      t.decimal :csc2210, :precision => 10, :scale => 1
      t.decimal :csc1209, :precision => 10, :scale => 1

      t.timestamps
    end
  end
end
