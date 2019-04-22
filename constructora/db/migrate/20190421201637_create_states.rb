class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :IdState
      t.string :Name

      t.timestamps
    end
  end
end
