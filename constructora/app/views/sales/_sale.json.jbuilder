json.extract! sale, :id, :project_apartment_id, :quotation_id, :bank_id, :SaleDate, :PaymentType, :CashAmount, :FinancedAmount, :IsActive, :created_at, :updated_at
json.url sale_url(sale, format: :json)
