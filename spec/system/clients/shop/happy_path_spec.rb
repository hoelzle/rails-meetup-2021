require 'rails_helper'

RSpec.describe "clients/shop – happy path", type: :system do
  before do
    driven_by(:selenium_headless)
  end

  let!(:prodcut) { create :product }

  it 'shows products' do
    visit '/shop'

    expect(page).to have_text product.name
  end
end
