require 'rails_helper'

RSpec.describe "clients/shop – happy path", type: :system do
  before do
    driven_by(:selenium_chrome)
  end

  let!(:product) { create :product }

  it 'shows products' do
    visit '/clients/shop/'

    expect(page).to have_text 'HELLO'
  end
end
