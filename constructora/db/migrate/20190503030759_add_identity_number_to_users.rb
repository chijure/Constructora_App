class AddIdentityNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :IdentityNumber, :string
  end
end
