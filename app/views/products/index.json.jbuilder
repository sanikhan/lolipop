json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :user_id, :initial_price, :selling_price, :subcategory_id, :opening_date, :closing_date, :availibility
  json.url product_url(product, format: :json)
end
