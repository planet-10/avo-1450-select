class CreateFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :farmers do |t|
      t.string :name
      t.references :farmers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
