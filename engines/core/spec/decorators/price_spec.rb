require 'rails_helper'

RSpec.describe Price do
  subject(:decorated) { described_class.new product, customer }

  let(:product) { create :product, code: code, price: 100 }
  let(:code) { create :code, kind: :maximal, discount: 20 }
  let(:customer) { create :customer, discount: 10 }

  context 'with regular price only' do
    it 'is expected to show regular price' do
      expect(decorated).to match_price 100, 10, 90
    end
  end
end
