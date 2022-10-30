class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :model
      t.string :link

      t.timestamps
    end
  end
end
