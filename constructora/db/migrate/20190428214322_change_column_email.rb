class ChangeColumnEmail < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :Mail, :email
  end
end
