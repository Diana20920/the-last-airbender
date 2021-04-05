require 'rails_helper'

RSpec.describe 'Search TLA API by Nation' do
  describe "I visit the '/' as a user" do
    it 'displays count of members by nation' do
      visit root_path

      select 'Fire Nation', from: 'nation'
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content("Total number of people who live in the Fire Nation: #{@members.count}")
    end

    it 'displays list with detailed information for the first 25 members' do
      visit root_path

      select 'Fire Nation', from: 'nation'
      click_button 'Search For Members'

      expect(page).to have_content("Deatails for first 25 members:")
    end
  end
end


# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
