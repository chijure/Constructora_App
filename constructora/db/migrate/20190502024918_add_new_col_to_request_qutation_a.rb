class AddNewColToRequestQutationA < ActiveRecord::Migration[5.2]
  def change
  	add_reference :request_quotations, :project_apartment, foreign_key: true
  end
end
