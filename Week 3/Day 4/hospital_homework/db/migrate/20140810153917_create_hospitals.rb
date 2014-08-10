class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.text :description
      t.integer :capacity

      t.timestamps
    end
  end
end
