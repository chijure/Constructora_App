class AddNewFieldVoucherToSale < ActiveRecord::Migration[5.2]
  def change
  	add_column :sales, :Voucher, :string
  end
end
