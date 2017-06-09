class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :registration_number
      t.string :course
      t.binary :results

      t.timestamps
    end
  end
end
