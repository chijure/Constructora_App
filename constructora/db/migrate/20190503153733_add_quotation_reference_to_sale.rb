class AddQuotationReferenceToSale < ActiveRecord::Migration[5.2]
  def change
  	add_reference :sales, :quotation, foreign_key: true
  end
end
