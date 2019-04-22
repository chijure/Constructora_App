class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :IdProject
      t.string :IdCity
      t.string :Name
      t.float :Price
      t.date :StartDate
      t.date :EndDate
      t.string :Address
      t.string :Description
      t.integer :Floors
      t.integer :ApartmentsQuantity
      t.integer :ParkingsQuantity
      t.integer :AvailableParkings
      t.integer :Status

      t.timestamps
    end
  end
end
