class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :IdClient
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
