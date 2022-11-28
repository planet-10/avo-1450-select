class CreateFarmerGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :farmer_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
