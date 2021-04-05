require 'rails_helper'

RSpec.describe 'Search TLA API by Nation' do
  describe "I visit the '/' as a user" do
    it 'displays count of members by nation' do
      visit root_path

      select 'Fire Nation', from: 'nation'
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content("Total number of people who live in the Fire Nation:")
    end

    it 'displays list with detailed information for the first 25 members' do
      visit root_path

      select 'Fire Nation', from: 'nation'
      click_button 'Search For Members'

      expect(page).to have_content("Details for first 25 members:")
      expect(page).to have_content("Name: Chan (Fire Nation admiral)")
      expect(page).to have_content("Affiliations: Fire Nation Navy")
    end
  end
end

# - The list of allies or "None" -> will address this in refactoring
# - The list of enemies or "None" -> will address this in refactoring
