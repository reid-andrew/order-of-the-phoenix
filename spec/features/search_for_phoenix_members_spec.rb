require 'rails_helper'

RSpec.describe "As a user when I- ", type: :feature do
  it 'visit the home page I can navigate to the search page' do
    visit "/"
    click_on 'Search For Members'

    expect(current_path).to eq('/search')
  end
end
