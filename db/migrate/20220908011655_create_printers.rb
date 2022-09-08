class CreatePrinters < ActiveRecord::Migration[7.0]
  def change
    create_table :printers do |t|
      t.string :name
      t.string :model
      t.string :serial
      t.string :ip
      t.string :driver

      t.timestamps
    end
  end
end
