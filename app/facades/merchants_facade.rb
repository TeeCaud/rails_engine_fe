class MerchantsFacade

  def self.get_merchants
    json = MerchantService.merchants
    json[:data].map do |data|
      Merchant.new(data)
    end
  end

  def self.get_merchant(id)
    merchant = MerchantService.merchant(id)
    Merchant.new(merchant[:data])
  end

  def self.get_merchant_items(id)
    merchant_items = MerchantService.merchant_items(id)
    merchant_items.map do |merchant_item|
      Item.new(merchant_items[:data])
    end
  end
end
