class ChangeActiveColumnApartmentPictures < ActiveRecord::Migration[5.2]
  def change
  	rename_column :apartment_pictures, :Active, :IsActive
  end
end
