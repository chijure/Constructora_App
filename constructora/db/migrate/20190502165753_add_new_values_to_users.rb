class AddNewValuesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Address, :string
    add_column :users, :Phone, :string
    add_column :users, :IsActive, :boolean
  end
end
