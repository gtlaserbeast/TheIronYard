class AddAddressColumnToHospitals < ActiveRecord::Migration
  def change
    add_column :hospitals, :address, :string
  end
end
