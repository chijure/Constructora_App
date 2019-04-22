json.extract! sale, :id, :IdSale, :IdApartmentType, :IdApartmentBooking, :IdBank, :SaleDate, :PaymentType, :CashAmount, :FinancedAmount, :IsActive, :created_at, :updated_at
json.url sale_url(sale, format: :json)
