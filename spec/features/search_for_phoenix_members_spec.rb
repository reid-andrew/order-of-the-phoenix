require 'rails_helper'

RSpec.describe "As a user when I- ", type: :feature do
  it 'visit the home page I can navigate to the search page' do
    visit "/"
    click_on 'Search For Members'
    expect(current_path).to eq('/search')
    list = find('.wizards').all('li')
    expect(list.size).to eq(21)

    within('#5a0fa7dcae5bc100213c2338') do
      expect(page).to have_content('Sirius Black')
      expect(page).to have_content('Gryffindor')
      expect(page).to have_content('Sirius Black')
    end

    within('#5a1096b33dc2080021cd8762') do
      expect(page).to have_content('Aberforth Dumbledore')
      expect(page).to have_content("Owner, Hog's Head Inn")
      expect(page).to have_content('Gryffindor')
      expect(page).to have_content('goat')
    end
  end

  it 'can find members for other houses' do
    visit "/"
    page.select("Hufflepuff", :from => "house")
    click_on 'Search For Members'
    expect(current_path).to eq('/search')
    list = find('.wizards').all('li')
    expect(list.size).to eq(3)
    
    within('#5a12333f0f5ae10021650d96') do
      expect(page).to have_content('Zacharias Smith')
      expect(page).to have_content('student')
      expect(page).to have_content('Hufflepuff')
    end
  end
end
