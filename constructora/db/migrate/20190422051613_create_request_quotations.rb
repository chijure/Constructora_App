class CreateRequestQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :request_quotations do |t|
      t.string :IdRequestQuotation
      t.string :IdProject
      t.string :IdUser
      t.string :IdentityNumber
      t.string :Name
      t.string :LastName
      t.string :Mail
      t.string :Phone
      t.date :RequestDate
      t.integer :Status

      t.timestamps
    end
  end
end
