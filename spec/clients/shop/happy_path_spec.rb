require 'rails_helper'

RSpec.describe "clients/shop – happy path", type: :system do
  before do
    driven_by(:selenium_headless)
  end

  let!(:product) { create :product, name: 'Booster' }

  it 'shows products' do
    visit '/clients/shop/'

    expect(page).to have_text 'Booster'
  end
end
