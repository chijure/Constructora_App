class CreateRequestQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :request_quotations do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
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
