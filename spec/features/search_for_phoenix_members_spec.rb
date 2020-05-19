require 'rails_helper'

RSpec.describe "As a user when I- ", type: :feature do
  it 'visit the home page I can navigate to the search page' do
    visit "/"
    click_on 'Search For Members'
    expect(current_path).to eq('/search')
    expect(page).to have_content('Sirius Black')
    expect(page).to have_content('Aberforth Dumbledore')
    list = find('.wizards').all('li')
    expect(list.size).to eq(21)
  end
end
