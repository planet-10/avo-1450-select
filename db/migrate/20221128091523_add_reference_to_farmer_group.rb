class AddReferenceToFarmerGroup < ActiveRecord::Migration[7.0]
  def change
    add_reference :farmer_groups, :secretary_farmer, null: true, foreign_key: { to_table: :farmers }
  end
end
