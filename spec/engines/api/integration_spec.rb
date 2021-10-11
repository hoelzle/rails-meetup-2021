require 'rails_helper'

RSpec.describe "API integration", type: :request do
  describe "GET /api/products" do
    let!(:product) { create :product }

    it "is successful" do
      get api.products_path
      expect(response).to have_http_status :ok
      expect(JSON.parse(response.body)).to contain_exactly hash_including 'name' => product.name
    end
  end
end
