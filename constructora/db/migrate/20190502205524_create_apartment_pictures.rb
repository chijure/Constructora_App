class CreateApartmentPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :apartment_pictures do |t|
      t.references :project_apartment, foreign_key: true
      t.string :Picture
      t.string :Description
      t.boolean :Active

      t.timestamps
    end
  end
end
