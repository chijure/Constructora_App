class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :Name
      t.boolean :IsActive

      t.timestamps
    end
  end
end
