class CreateApartmentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :apartment_types do |t|
      t.string :Name
      t.boolean :IsActive

      t.timestamps
    end
  end
end
