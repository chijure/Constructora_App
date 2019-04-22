class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :IdCity
      t.string :IdState
      t.string :Name

      t.timestamps
    end
  end
end
