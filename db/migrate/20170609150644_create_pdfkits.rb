class CreatePdfkits < ActiveRecord::Migration[5.0]
  def change
    create_table :pdfkits do |t|

      t.timestamps
    end
  end
end
