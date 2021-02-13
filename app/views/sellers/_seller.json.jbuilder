json.extract! seller, :id, :first_name, :last_name, :phone, :email, :product_description, :created_at, :updated_at
json.url seller_url(seller, format: :json)
