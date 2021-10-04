class Price < Context
  alias customer context
  delegate :name, to: :code, prefix: true

  delegate :price, to: :lowest

  delegate :net_price, to: :lowest

  delegate :discount, to: :lowest

  private

  def price_classes
    [RegularPrice]
  end

  def prices
    @prices ||= price_classes.map { |price| price.new __getobj__, customer }
  end

  def lowest
    @lowest ||= prices.reduce do |lowest, other|
      other.net_price < lowest.net_price ? other : lowest
    end
  end
end
