class MerchantService

  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.json_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchants
    response = conn.get('api/v1/merchants')
    json_response(response)
  end

  def self.merchant(id)
    response = conn.get("api/v1/merchants/#{id}")
    json_response(response)
  end

  def self.merchant_items(id)
    response = conn.get("api/v1/merchants/#{id}/items")
    json_response(response)
  end
end
