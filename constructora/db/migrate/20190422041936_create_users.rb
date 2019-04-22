class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :IdUser
      t.string :IdProfile
      t.string :IdCity
      t.string :IdentityNumber
      t.string :Name
      t.string :LastName
      t.string :Address
      t.string :Mail
      t.string :Phone
      t.boolean :IsActive

      t.timestamps
    end
  end
end
